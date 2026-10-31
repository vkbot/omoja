package p7;

import o7.d0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends d0 {
    public final /* synthetic */ int d;
    public final /* synthetic */ c e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(c cVar, int i9) {
        super(1, cVar);
        this.d = i9;
        switch (i9) {
            case 1:
                this.e = cVar;
                super(1, cVar);
                w7.b.b();
                break;
            default:
                this.e = cVar;
                w7.b.b();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.d0
    public final void a() {
        c cVar;
        int i9;
        c cVar2;
        switch (this.d) {
            case 0:
                l9.l lVar = new l9.l();
                w7.b.c();
                try {
                    w7.a aVar = w7.b.f5947a;
                    aVar.getClass();
                    synchronized (this.e.f4608b) {
                        l9.l lVar2 = this.e.c;
                        lVar.write(lVar2, lVar2.y());
                        cVar = this.e;
                        cVar.f4610g = false;
                        i9 = cVar.f4617n;
                        break;
                    }
                    cVar.f4613j.write(lVar, lVar.c);
                    synchronized (this.e.f4608b) {
                        this.e.f4617n -= i9;
                        break;
                    }
                    aVar.getClass();
                    return;
                } catch (Throwable th) {
                    try {
                        w7.b.f5947a.getClass();
                        break;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            default:
                l9.l lVar3 = new l9.l();
                w7.b.c();
                try {
                    w7.a aVar2 = w7.b.f5947a;
                    aVar2.getClass();
                    synchronized (this.e.f4608b) {
                        l9.l lVar4 = this.e.c;
                        lVar3.write(lVar4, lVar4.c);
                        cVar2 = this.e;
                        cVar2.f4611h = false;
                        break;
                    }
                    cVar2.f4613j.write(lVar3, lVar3.c);
                    this.e.f4613j.flush();
                    aVar2.getClass();
                    return;
                } catch (Throwable th3) {
                    try {
                        w7.b.f5947a.getClass();
                        break;
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
        }
    }
}
