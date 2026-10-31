package p157o7;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import p148n7.AbstractC2500d;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2551x0;

/* JADX INFO: renamed from: o7.a2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2602a2 extends AbstractC2500d {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2614c2 f7259a;

    public C2602a2(C2614c2 c2614c2) {
        this.f7259a = c2614c2;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: e */
    public final String mo3887e() {
        return this.f7259a.f7332b;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: f */
    public final AbstractC2542t mo3888f(C2551x0 c2551x0, C2497c c2497c) {
        C2632f2 c2632f2 = this.f7259a.f7334d;
        Logger logger = C2632f2.f7390c0;
        Executor executor = c2497c.f6892b;
        if (executor == null) {
            executor = c2632f2.f7432h;
        }
        C2713t c2713t = new C2713t(c2551x0, executor, c2497c, c2632f2.f7422Z, c2632f2.f7405I ? null : this.f7259a.f7334d.f7430f.f7595b.f8315e, this.f7259a.f7334d.f7408L);
        c2713t.f7774r = this.f7259a.f7334d.f7438n;
        return c2713t;
    }
}
