package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements x7.f, z7.a, x7.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2734b;
    public final x7.f c;
    public final b8.d d;
    public z7.a e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(x7.f fVar, b8.d dVar, int i9) {
        this.f2734b = i9;
        this.c = fVar;
        this.d = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void a() {
        this.c.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        switch (this.f2734b) {
            case 0:
                if (c8.a.e(this.e, aVar)) {
                    this.e = aVar;
                    this.c.b(this);
                }
                break;
            default:
                if (c8.a.e(this.e, aVar)) {
                    this.e = aVar;
                    this.c.b(this);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        switch (this.f2734b) {
            case 0:
                x7.f fVar = this.c;
                try {
                    if (!this.d.test(obj)) {
                        fVar.a();
                    } else {
                        fVar.c(obj);
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    fVar.onError(th);
                    return;
                }
                break;
            default:
                x7.f fVar2 = this.c;
                try {
                    if (!this.d.test(obj)) {
                        fVar2.a();
                    } else {
                        fVar2.c(obj);
                    }
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    fVar2.onError(th2);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f2734b) {
            case 0:
                z7.a aVar = this.e;
                this.e = c8.a.f542b;
                aVar.dispose();
                break;
            default:
                z7.a aVar2 = this.e;
                this.e = c8.a.f542b;
                aVar2.dispose();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        switch (this.f2734b) {
            case 0:
                this.c.onError(th);
                break;
            default:
                this.c.onError(th);
                break;
        }
    }
}
