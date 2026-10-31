package h8;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends AtomicInteger implements x7.d, n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n9.b f2541b;
    public long c;
    public final AtomicReference d = new AtomicReference();
    public final AtomicLong e = new AtomicLong();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicLong f2542f = new AtomicLong();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f2543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b f2545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2546j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(b bVar) {
        this.f2545i = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        long j9 = this.f2546j;
        if (j9 != 0) {
            this.f2546j = 0L;
            h(j9);
        }
        b bVar = this.f2545i;
        bVar.f2521l = false;
        bVar.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (getAndIncrement() != 0) {
            return;
        }
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        int iAddAndGet = 1;
        long jB = 0;
        n9.b bVar = null;
        do {
            n9.b bVar2 = (n9.b) this.d.get();
            if (bVar2 != null) {
                bVar2 = (n9.b) this.d.getAndSet(null);
            }
            long andSet = this.e.get();
            if (andSet != 0) {
                andSet = this.e.getAndSet(0L);
            }
            long andSet2 = this.f2542f.get();
            if (andSet2 != 0) {
                andSet2 = this.f2542f.getAndSet(0L);
            }
            n9.b bVar3 = this.f2541b;
            if (this.f2543g) {
                if (bVar3 != null) {
                    bVar3.cancel();
                    this.f2541b = null;
                }
                if (bVar2 != null) {
                    bVar2.cancel();
                }
            } else {
                long jB2 = this.c;
                if (jB2 != Long.MAX_VALUE) {
                    jB2 = e3.d.b(jB2, andSet);
                    if (jB2 != Long.MAX_VALUE) {
                        jB2 -= andSet2;
                        if (jB2 < 0) {
                            a.a.s(new a8.f(ai.onnxruntime.a.h(jB2, "More produced than requested: ")));
                            jB2 = 0;
                        }
                    }
                    this.c = jB2;
                }
                if (bVar2 != null) {
                    if (bVar3 != null) {
                        bVar3.cancel();
                    }
                    this.f2541b = bVar2;
                    if (jB2 != 0) {
                        jB = e3.d.b(jB, jB2);
                        bVar = bVar2;
                    }
                } else if (bVar3 != null && andSet != 0) {
                    jB = e3.d.b(jB, andSet);
                    bVar = bVar3;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jB != 0) {
            bVar.d(jB);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f2543g) {
            return;
        }
        this.f2543g = true;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (!o8.f.c(j9) || this.f2544h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            e3.d.a(this.e, j9);
            b();
            return;
        }
        long j10 = this.c;
        if (j10 != Long.MAX_VALUE) {
            long jB = e3.d.b(j10, j9);
            this.c = jB;
            if (jB == Long.MAX_VALUE) {
                this.f2544h = true;
            }
        }
        n9.b bVar = this.f2541b;
        if (decrementAndGet() != 0) {
            c();
        }
        if (bVar != null) {
            bVar.d(j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        this.f2546j++;
        this.f2545i.h(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        i(bVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(long j9) {
        if (this.f2544h) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            e3.d.a(this.f2542f, j9);
            b();
            return;
        }
        long j10 = this.c;
        if (j10 != Long.MAX_VALUE) {
            long j11 = j10 - j9;
            if (j11 < 0) {
                a.a.s(new a8.f(ai.onnxruntime.a.h(j11, "More produced than requested: ")));
                j11 = 0;
            }
            this.c = j11;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(n9.b bVar) {
        if (this.f2543g) {
            bVar.cancel();
            return;
        }
        d8.b.a(bVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            n9.b bVar2 = (n9.b) this.d.getAndSet(bVar);
            if (bVar2 != null) {
                bVar2.cancel();
            }
            b();
            return;
        }
        n9.b bVar3 = this.f2541b;
        if (bVar3 != null) {
            bVar3.cancel();
        }
        this.f2541b = bVar;
        long j9 = this.c;
        if (decrementAndGet() != 0) {
            c();
        }
        if (j9 != 0) {
            bVar.d(j9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        long j9 = this.f2546j;
        if (j9 != 0) {
            this.f2546j = 0L;
            h(j9);
        }
        this.f2545i.c(th);
    }
}
