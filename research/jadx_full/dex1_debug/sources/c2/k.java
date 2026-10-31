package c2;

import android.content.Context;
import f5.k0;
import h8.a0;
import h8.p0;
import h8.q0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements e5.b, f2.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f454b;
    public Object c;
    public Object d;
    public Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f455f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f456g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f457h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f458i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(t8.a aVar, t8.a aVar2, t8.a aVar3, t8.a aVar4, t8.a aVar5, t8.a aVar6, t8.a aVar7, int i9) {
        this.f454b = i9;
        this.c = aVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f455f = aVar4;
        this.f456g = aVar5;
        this.f457h = aVar6;
        this.f458i = aVar7;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r10v0, resolved type: h8.a0 */
    /* JADX DEBUG: Multi-variable search result rejected for r5v3, resolved type: h8.l */
    /* JADX WARN: Code duplicated, block: B:16:0x0145  */
    /* JADX WARN: Code duplicated, block: B:18:0x014d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0150  */
    /* JADX WARN: Code duplicated, block: B:20:0x0157  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // t8.a
    public Object get() throws Exception {
        x7.b gVar;
        x7.b bVar;
        a0 a0Var;
        f5.q qVar;
        x7.b gVar2;
        Object objCall;
        switch (this.f454b) {
            case 1:
                f5.t tVar = (f5.t) ((t8.a) this.c).get();
                ((g5.a) this.d).get();
                ((a5.h) this.e).get();
                l5.e eVar = (l5.e) ((h5.a) this.f455f).get();
                ((f5.i) this.f456g).get();
                ((g5.a) this.f457h).get();
                Executor executor = (Executor) ((g5.a) this.f458i).get();
                d5.j jVar = new d5.j();
                jVar.f1769a = executor;
                o7.a aVarC = ((l5.d) eVar).c();
                androidx.navigation.b bVar2 = new androidx.navigation.b(25);
                aVarC.getClass();
                ((com.bumptech.glide.manager.t) aVarC.c).m(new z2.e(executor, bVar2));
                aVarC.i();
                k0 k0Var = tVar.f2230f;
                p0 p0Var = tVar.f2228a;
                p0 p0Var2 = tVar.f2234j.f2188b;
                p0 p0Var3 = tVar.f2229b;
                int i9 = x7.b.f6040b;
                d8.b.a(p0Var, "source1 is null");
                d8.b.a(p0Var2, "source2 is null");
                d8.b.a(p0Var3, "source3 is null");
                h8.l lVar = new h8.l(1, new n9.a[]{p0Var, p0Var2, p0Var3});
                int i10 = x7.b.f6040b;
                d8.b.b(3, "maxConcurrency");
                d8.b.b(i10, "bufferSize");
                if (lVar instanceof e8.e) {
                    Object objCall2 = ((e8.e) lVar).call();
                    if (objCall2 == null) {
                        bVar = h8.t.c;
                    } else {
                        gVar = new q0(objCall2, d8.b.f1795a);
                    }
                    h8.o oVar = new h8.o(bVar, new e0.g(12));
                    x7.k kVar = k0Var.f2213a;
                    d8.b.a(kVar, "scheduler is null");
                    d8.b.b(i10, "bufferSize");
                    a0Var = new a0(oVar, kVar, i10);
                    qVar = new f5.q(tVar, 1);
                    d8.b.b(2, "prefetch");
                    if (a0Var instanceof e8.e) {
                        objCall = ((e8.e) a0Var).call();
                        if (objCall == null) {
                            gVar2 = h8.t.c;
                        } else {
                            gVar2 = new q0(objCall, qVar);
                        }
                    } else {
                        gVar2 = new h8.g(a0Var, qVar);
                    }
                    x7.k kVar2 = k0Var.f2214b;
                    d8.b.a(kVar2, "scheduler is null");
                    d8.b.b(i10, "bufferSize");
                    new a0(gVar2, kVar2, i10).d(new n8.c(new androidx.navigation.b(jVar)));
                    return jVar;
                }
                gVar = new h8.g(lVar, i10);
                bVar = gVar;
                h8.o oVar2 = new h8.o(bVar, new e0.g(12));
                x7.k kVar3 = k0Var.f2213a;
                d8.b.a(kVar3, "scheduler is null");
                d8.b.b(i10, "bufferSize");
                a0Var = new a0(oVar2, kVar3, i10);
                qVar = new f5.q(tVar, 1);
                d8.b.b(2, "prefetch");
                if (a0Var instanceof e8.e) {
                    objCall = ((e8.e) a0Var).call();
                    if (objCall == null) {
                        gVar2 = h8.t.c;
                    } else {
                        gVar2 = new q0(objCall, qVar);
                    }
                } else {
                    gVar2 = new h8.g(a0Var, qVar);
                }
                x7.k kVar4 = k0Var.f2214b;
                d8.b.a(kVar4, "scheduler is null");
                d8.b.b(i10, "bufferSize");
                new a0(gVar2, kVar4, i10).d(new n8.c(new androidx.navigation.b(jVar)));
                return jVar;
            default:
                return new j2.i((Context) ((t8.a) this.c).get(), (e2.d) ((t8.a) this.d).get(), (k2.d) ((t8.a) this.e).get(), (a5.h) ((a5.h) this.f455f).get(), (Executor) ((t8.a) this.f456g).get(), (l2.c) ((t8.a) this.f457h).get(), new c5.e(15), new z3.f(14), (k2.c) ((t8.a) this.f458i).get());
        }
    }

    public /* synthetic */ k(int i9) {
        this.f454b = i9;
    }
}
