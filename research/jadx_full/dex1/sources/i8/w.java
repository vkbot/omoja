package i8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w extends AtomicReference implements x7.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v f2748b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w(v vVar, int i9) {
        this.f2748b = vVar;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        v vVar = this.f2748b;
        if (vVar.getAndSet(0) > 0) {
            vVar.a(this.c);
            vVar.f2747b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        c8.a.d(this, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        v vVar = this.f2748b;
        x7.f fVar = vVar.f2747b;
        Object[] objArr = vVar.e;
        objArr[this.c] = obj;
        if (vVar.decrementAndGet() == 0) {
            try {
                fVar.c(vVar.c.apply(objArr));
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                fVar.onError(th);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        v vVar = this.f2748b;
        if (vVar.getAndSet(0) <= 0) {
            a.a.s(th);
        } else {
            vVar.a(this.c);
            vVar.f2747b.onError(th);
        }
    }
}
