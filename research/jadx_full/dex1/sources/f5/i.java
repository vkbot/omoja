package f5;

import java.util.LinkedHashSet;
import java.util.Optional;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i implements e5.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2202b;
    public final Object c;
    public final Object d;
    public final Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f2203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f2204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f2205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f2206i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i() {
        this.f2202b = new LinkedHashSet();
        this.c = new LinkedHashSet();
        this.d = new LinkedHashSet();
        this.e = new LinkedHashSet();
        this.f2203f = new LinkedHashSet();
        this.f2205h = Optional.empty();
        this.f2206i = Optional.empty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t8.a
    public Object get() {
        ((g5.a) this.f2202b).get();
        ((z3.f) this.c).get();
        ((g5.a) this.d).get();
        ((g5.a) this.e).get();
        ((g5.a) this.f2203f).get();
        ((w7.c) this.f2204g).get();
        ((a5.h) this.f2206i).get();
        return new c5.e(6);
    }

    public i(g5.a aVar, z3.f fVar, g5.a aVar2, g5.a aVar3, g5.a aVar4, w7.c cVar, t8.a aVar5, a5.h hVar) {
        this.f2202b = aVar;
        this.c = fVar;
        this.d = aVar2;
        this.e = aVar3;
        this.f2203f = aVar4;
        this.f2204g = cVar;
        this.f2205h = aVar5;
        this.f2206i = hVar;
    }
}
