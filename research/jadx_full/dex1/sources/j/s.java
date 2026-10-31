package j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2832b;
    public final y.f c;
    public final /* synthetic */ v d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(v vVar, y.f fVar, int i9) {
        this.f2832b = i9;
        this.d = vVar;
        this.c = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2832b) {
            case 0:
                y.f fVar = this.c;
                fVar.f6059b.a();
                synchronized (fVar.c) {
                    synchronized (this.d) {
                        try {
                            if (this.d.f2836b.f2835b.contains(new t(this.c, c0.g.f399b))) {
                                v vVar = this.d;
                                y.f fVar2 = this.c;
                                vVar.getClass();
                                try {
                                    fVar2.f(vVar.r, 5);
                                } catch (Throwable th) {
                                    throw new c(th);
                                }
                            }
                            this.d.b();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return;
            default:
                y.f fVar3 = this.c;
                fVar3.f6059b.a();
                synchronized (fVar3.c) {
                    synchronized (this.d) {
                        try {
                            if (this.d.f2836b.f2835b.contains(new t(this.c, c0.g.f399b))) {
                                this.d.t.a();
                                v vVar2 = this.d;
                                y.f fVar4 = this.c;
                                vVar2.getClass();
                                try {
                                    fVar4.g(vVar2.t, vVar2.f2847p);
                                    this.d.g(this.c);
                                } catch (Throwable th3) {
                                    throw new c(th3);
                                }
                            }
                            this.d.b();
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
                return;
        }
    }
}
