package n8;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import o8.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends AtomicInteger implements x7.d, n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f3997b;
    public final p8.b c = new p8.b();
    public final AtomicLong d = new AtomicLong();
    public final AtomicReference e = new AtomicReference();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f3998f = new AtomicBoolean();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f3999g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(x7.d dVar) {
        this.f3997b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.f3999g = true;
        x7.d dVar = this.f3997b;
        p8.b bVar = this.c;
        if (getAndIncrement() == 0) {
            bVar.getClass();
            Throwable thB = p8.d.b(bVar);
            if (thB != null) {
                dVar.onError(thB);
            } else {
                dVar.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f3999g) {
            return;
        }
        f.a(this.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (j9 <= 0) {
            cancel();
            onError(new IllegalArgumentException(ai.onnxruntime.a.h(j9, "§3.9 violated: positive request amount required but it was ")));
            return;
        }
        AtomicReference atomicReference = this.e;
        n9.b bVar = (n9.b) atomicReference.get();
        if (bVar != null) {
            bVar.d(j9);
            return;
        }
        if (f.c(j9)) {
            AtomicLong atomicLong = this.d;
            e3.d.a(atomicLong, j9);
            n9.b bVar2 = (n9.b) atomicReference.get();
            if (bVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    bVar2.d(andSet);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (get() == 0 && compareAndSet(0, 1)) {
            x7.d dVar = this.f3997b;
            dVar.e(obj);
            if (decrementAndGet() != 0) {
                p8.b bVar = this.c;
                bVar.getClass();
                Throwable thB = p8.d.b(bVar);
                if (thB != null) {
                    dVar.onError(thB);
                } else {
                    dVar.a();
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (!this.f3998f.compareAndSet(false, true)) {
            bVar.cancel();
            cancel();
            onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
            return;
        }
        this.f3997b.f(this);
        if (f.b(this.e, bVar)) {
            long andSet = this.d.getAndSet(0L);
            if (andSet != 0) {
                bVar.d(andSet);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        this.f3999g = true;
        x7.d dVar = this.f3997b;
        p8.b bVar = this.c;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
        } else if (getAndIncrement() == 0) {
            dVar.onError(p8.d.b(bVar));
        }
    }
}
