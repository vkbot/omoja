package h8;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z extends AtomicInteger implements x7.d, n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2621b;
    public final int c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b8.c f2624h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n9.b f2626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f2627k;
    public final AtomicLong d = new AtomicLong();
    public final c8.c e = new c8.c(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p8.b f2623g = new p8.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicInteger f2622f = new AtomicInteger(1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReference f2625i = new AtomicReference();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z(x7.d dVar, b8.c cVar, int i9) {
        this.f2621b = dVar;
        this.f2624h = cVar;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.f2622f.decrementAndGet();
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        l8.b bVar = (l8.b) this.f2625i.get();
        if (bVar != null) {
            bVar.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (getAndIncrement() == 0) {
            h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        this.f2627k = true;
        this.f2626j.cancel();
        this.e.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9)) {
            e3.d.a(this.d, j9);
            c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        try {
            Object objApply = this.f2624h.apply(obj);
            d8.b.a(objApply, "The mapper returned a null MaybeSource");
            x7.e eVar = (x7.e) objApply;
            this.f2622f.getAndIncrement();
            i8.b bVar = new i8.b(this);
            if (this.f2627k || !this.e.a(bVar)) {
                return;
            }
            eVar.c(bVar);
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            this.f2626j.cancel();
            onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.f2626j, bVar)) {
            this.f2626j = bVar;
            this.f2621b.f(this);
            int i9 = this.c;
            if (i9 == Integer.MAX_VALUE) {
                bVar.d(Long.MAX_VALUE);
            } else {
                bVar.d(i9);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        x7.d dVar = this.f2621b;
        AtomicInteger atomicInteger = this.f2622f;
        AtomicReference atomicReference = this.f2625i;
        int iAddAndGet = 1;
        do {
            long j9 = this.d.get();
            long j10 = 0;
            while (true) {
                if (j10 == j9) {
                    break;
                }
                if (this.f2627k) {
                    b();
                    return;
                }
                if (((Throwable) this.f2623g.get()) != null) {
                    p8.b bVar = this.f2623g;
                    bVar.getClass();
                    Throwable thB = p8.d.b(bVar);
                    b();
                    dVar.onError(thB);
                    return;
                }
                boolean z8 = atomicInteger.get() == 0;
                l8.b bVar2 = (l8.b) atomicReference.get();
                Object objPoll = bVar2 != null ? bVar2.poll() : null;
                boolean z9 = objPoll == null;
                if (z8 && z9) {
                    p8.b bVar3 = this.f2623g;
                    bVar3.getClass();
                    Throwable thB2 = p8.d.b(bVar3);
                    if (thB2 != null) {
                        dVar.onError(thB2);
                        return;
                    } else {
                        dVar.a();
                        return;
                    }
                }
                if (z9) {
                    break;
                }
                dVar.e(objPoll);
                j10++;
            }
            if (j10 == j9) {
                if (this.f2627k) {
                    b();
                    return;
                }
                if (((Throwable) this.f2623g.get()) != null) {
                    p8.b bVar4 = this.f2623g;
                    bVar4.getClass();
                    Throwable thB3 = p8.d.b(bVar4);
                    b();
                    dVar.onError(thB3);
                    return;
                }
                boolean z10 = atomicInteger.get() == 0;
                l8.b bVar5 = (l8.b) atomicReference.get();
                boolean z11 = bVar5 == null || bVar5.isEmpty();
                if (z10 && z11) {
                    p8.b bVar6 = this.f2623g;
                    bVar6.getClass();
                    Throwable thB4 = p8.d.b(bVar6);
                    if (thB4 != null) {
                        dVar.onError(thB4);
                        return;
                    } else {
                        dVar.a();
                        return;
                    }
                }
            }
            if (j10 != 0) {
                e3.d.p(this.d, j10);
                if (this.c != Integer.MAX_VALUE) {
                    this.f2626j.d(j10);
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l8.b i() {
        while (true) {
            AtomicReference atomicReference = this.f2625i;
            l8.b bVar = (l8.b) atomicReference.get();
            if (bVar != null) {
                return bVar;
            }
            l8.b bVar2 = new l8.b(x7.b.f6040b);
            while (!atomicReference.compareAndSet(null, bVar2)) {
                if (atomicReference.get() != null) {
                }
            }
            return bVar2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        this.f2622f.decrementAndGet();
        p8.b bVar = this.f2623g;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
        } else {
            this.e.dispose();
            c();
        }
    }
}
