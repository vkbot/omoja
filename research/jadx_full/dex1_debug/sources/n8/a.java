package n8;

import o8.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a implements e8.a, e8.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e8.a f3992b;
    public n9.b c;
    public e8.d d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3993f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(e8.a aVar) {
        this.f3992b = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public void a() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.f3992b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Throwable th) {
        com.bumptech.glide.d.v(th);
        this.c.cancel();
        onError(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        this.c.cancel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.d.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        this.c.d(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (f.e(this.c, bVar)) {
            this.c = bVar;
            if (bVar instanceof e8.d) {
                this.d = (e8.d) bVar;
            }
            this.f3992b.f(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public int h(int i9) {
        e8.d dVar = this.d;
        if (dVar == null || (i9 & 4) != 0) {
            return 0;
        }
        int iH = dVar.h(i9);
        if (iH == 0) {
            return iH;
        }
        this.f3993f = iH;
        return iH;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public void onError(Throwable th) {
        if (this.e) {
            a.a.s(th);
        } else {
            this.e = true;
            this.f3992b.onError(th);
        }
    }
}
