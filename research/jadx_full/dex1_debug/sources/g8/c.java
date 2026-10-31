package g8;

import i8.r;
import x7.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c implements x7.a, z7.a, f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2405b;
    public z7.a c;
    public final Object d;
    public final Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(d dVar, x7.a aVar) {
        this.f2405b = 0;
        this.e = dVar;
        this.d = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public final void a() {
        switch (this.f2405b) {
            case 0:
                x7.a aVar = (x7.a) this.d;
                d dVar = (d) this.e;
                if (this.c != c8.a.f542b) {
                    try {
                        dVar.d.run();
                        aVar.a();
                    } catch (Throwable th) {
                        com.bumptech.glide.d.v(th);
                        aVar.onError(th);
                        return;
                    }
                    break;
                }
                break;
            case 1:
                ((f) this.d).a();
                break;
            default:
                z7.a aVar2 = this.c;
                c8.a aVar3 = c8.a.f542b;
                if (aVar2 != aVar3) {
                    this.c = aVar3;
                    ((f) this.d).a();
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public final void b(z7.a aVar) {
        switch (this.f2405b) {
            case 0:
                x7.a aVar2 = (x7.a) this.d;
                if (c8.a.e(this.c, aVar)) {
                    this.c = aVar;
                    aVar2.b(this);
                }
                break;
            case 1:
                if (c8.a.e(this.c, aVar)) {
                    this.c = aVar;
                    ((f) this.d).b(this);
                }
                break;
            default:
                f fVar = (f) this.d;
                if (c8.a.e(this.c, aVar)) {
                    this.c = aVar;
                    fVar.b(this);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void c(Object obj) {
        switch (this.f2405b) {
            case 1:
                f fVar = (f) this.d;
                try {
                    Object objApply = ((b8.c) this.e).apply(obj);
                    d8.b.a(objApply, "The mapper returned a null item");
                    fVar.c(objApply);
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    fVar.onError(th);
                    return;
                }
                break;
            default:
                z7.a aVar = this.c;
                c8.a aVar2 = c8.a.f542b;
                if (aVar != aVar2) {
                    try {
                        ((r) this.e).c.accept(obj);
                        this.c = aVar2;
                        ((f) this.d).c(obj);
                    } catch (Throwable th2) {
                        com.bumptech.glide.d.v(th2);
                        d(th2);
                    }
                    break;
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(Throwable th) {
        try {
            ((r) this.e).d.accept(th);
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            th = new a8.c(th, th2);
        }
        this.c = c8.a.f542b;
        ((f) this.d).onError(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f2405b) {
            case 0:
                this.c.dispose();
                break;
            case 1:
                z7.a aVar = this.c;
                this.c = c8.a.f542b;
                aVar.dispose();
                break;
            default:
                this.c.dispose();
                this.c = c8.a.f542b;
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.a, x7.f
    public final void onError(Throwable th) {
        switch (this.f2405b) {
            case 0:
                d dVar = (d) this.e;
                if (this.c != c8.a.f542b) {
                    try {
                        dVar.c.accept(th);
                    } catch (Throwable th2) {
                        com.bumptech.glide.d.v(th2);
                        th = new a8.c(th, th2);
                    }
                    ((x7.a) this.d).onError(th);
                } else {
                    a.a.s(th);
                }
                break;
            case 1:
                ((f) this.d).onError(th);
                break;
            default:
                if (this.c != c8.a.f542b) {
                    d(th);
                } else {
                    a.a.s(th);
                }
                break;
        }
    }

    public /* synthetic */ c(f fVar, Object obj, int i9) {
        this.f2405b = i9;
        this.d = fVar;
        this.e = obj;
    }
}
