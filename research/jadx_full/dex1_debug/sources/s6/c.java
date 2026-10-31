package s6;

import z5.i;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f6.b f5304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f5305b;
    public final o c;
    public final o d;
    public final o e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5306f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5307g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5309i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(f6.b bVar, o oVar, o oVar2, o oVar3, o oVar4) throws i {
        boolean z8 = oVar == null || oVar2 == null;
        boolean z9 = oVar3 == null || oVar4 == null;
        if (z8 && z9) {
            throw i.d;
        }
        if (z8) {
            oVar = new o(0.0f, oVar3.f6340b);
            oVar2 = new o(0.0f, oVar4.f6340b);
        } else if (z9) {
            int i9 = bVar.f2258b;
            oVar3 = new o(i9 - 1, oVar.f6340b);
            oVar4 = new o(i9 - 1, oVar2.f6340b);
        }
        this.f5304a = bVar;
        this.f5305b = oVar;
        this.c = oVar2;
        this.d = oVar3;
        this.e = oVar4;
        this.f5306f = (int) Math.min(oVar.f6339a, oVar2.f6339a);
        this.f5307g = (int) Math.max(oVar3.f6339a, oVar4.f6339a);
        this.f5308h = (int) Math.min(oVar.f6340b, oVar3.f6340b);
        this.f5309i = (int) Math.max(oVar2.f6340b, oVar4.f6340b);
    }

    public c(c cVar) {
        this.f5304a = cVar.f5304a;
        this.f5305b = cVar.f5305b;
        this.c = cVar.c;
        this.d = cVar.d;
        this.e = cVar.e;
        this.f5306f = cVar.f5306f;
        this.f5307g = cVar.f5307g;
        this.f5308h = cVar.f5308h;
        this.f5309i = cVar.f5309i;
    }
}
