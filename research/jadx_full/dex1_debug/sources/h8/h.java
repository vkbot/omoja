package h8;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class h extends AtomicLong implements n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2553b;
    public final c8.d c = new c8.d(0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(x7.d dVar) {
        this.f2553b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        c8.d dVar = this.c;
        if (dVar.c()) {
            return;
        }
        try {
            this.f2553b.a();
        } finally {
            dVar.dispose();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        }
        c8.d dVar = this.c;
        if (dVar.c()) {
            return false;
        }
        try {
            this.f2553b.onError(th);
            return true;
        } finally {
            dVar.dispose();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        c8.d dVar = this.c;
        dVar.getClass();
        c8.a.a(dVar);
        e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9)) {
            e3.d.a(this, j9);
            c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean f(Throwable th) {
        return b(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return getClass().getSimpleName() + "{" + super.toString() + "}";
    }

    public void c() {
    }

    public void e() {
    }
}
