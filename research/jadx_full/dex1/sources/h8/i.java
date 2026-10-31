package h8;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i extends h {
    public final /* synthetic */ int d = 1;
    public Throwable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f2563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicInteger f2564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f2565h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(x7.d dVar, int i9) {
        super(dVar);
        this.f2565h = new l8.b(i9);
        this.f2564g = new AtomicInteger();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h
    public final void c() {
        switch (this.d) {
            case 0:
                g();
                break;
            default:
                g();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h
    public final void e() {
        switch (this.d) {
            case 0:
                if (this.f2564g.getAndIncrement() == 0) {
                    ((l8.b) this.f2565h).clear();
                }
                break;
            default:
                if (this.f2564g.getAndIncrement() == 0) {
                    ((AtomicReference) this.f2565h).lazySet(null);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h
    public final boolean f(Throwable th) {
        switch (this.d) {
            case 0:
                if (this.f2563f || this.c.c()) {
                    return false;
                }
                this.e = th;
                this.f2563f = true;
                g();
                return true;
            default:
                if (this.f2563f || this.c.c()) {
                    return false;
                }
                this.e = th;
                this.f2563f = true;
                g();
                return true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:70:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:79:0x0100  */
    /* JADX WARN: Code duplicated, block: B:82:0x0108  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ea A[SYNTHETIC] */
    public final void g() {
        boolean z8;
        Throwable th;
        switch (this.d) {
            case 0:
                if (this.f2564g.getAndIncrement() == 0) {
                    x7.d dVar = this.f2553b;
                    l8.b bVar = (l8.b) this.f2565h;
                    int iAddAndGet = 1;
                    do {
                        long j9 = get();
                        for (long j10 = 0; j10 != j9; j10++) {
                            if (this.c.c()) {
                                bVar.clear();
                            } else {
                                boolean z9 = this.f2563f;
                                Object objPoll = bVar.poll();
                                boolean z10 = objPoll == null;
                                if (z9 && z10) {
                                    Throwable th2 = this.e;
                                    if (th2 != null) {
                                        b(th2);
                                    } else {
                                        a();
                                    }
                                } else if (z10) {
                                    if (j10 == j9) {
                                        if (this.c.c()) {
                                            bVar.clear();
                                        } else {
                                            z8 = this.f2563f;
                                            boolean zIsEmpty = bVar.isEmpty();
                                            if (z8 && zIsEmpty) {
                                                th = this.e;
                                                if (th != null) {
                                                    b(th);
                                                } else {
                                                    a();
                                                }
                                            }
                                        }
                                    }
                                    if (j10 != 0) {
                                        e3.d.p(this, j10);
                                    }
                                    iAddAndGet = this.f2564g.addAndGet(-iAddAndGet);
                                } else {
                                    dVar.e(objPoll);
                                }
                            }
                            break;
                        }
                        if (j10 == j9) {
                            if (this.c.c()) {
                                bVar.clear();
                            } else {
                                z8 = this.f2563f;
                                boolean zIsEmpty2 = bVar.isEmpty();
                                if (z8) {
                                    th = this.e;
                                    if (th != null) {
                                        b(th);
                                    } else {
                                        a();
                                    }
                                }
                            }
                        }
                        if (j10 != 0) {
                            e3.d.p(this, j10);
                        }
                        iAddAndGet = this.f2564g.addAndGet(-iAddAndGet);
                        break;
                    } while (iAddAndGet != 0);
                }
                break;
            default:
                if (this.f2564g.getAndIncrement() == 0) {
                    x7.d dVar2 = this.f2553b;
                    AtomicReference atomicReference = (AtomicReference) this.f2565h;
                    int iAddAndGet2 = 1;
                    do {
                        long j11 = get();
                        long j12 = 0;
                        while (true) {
                            if (j12 != j11) {
                                if (this.c.c()) {
                                    atomicReference.lazySet(null);
                                    break;
                                } else {
                                    boolean z11 = this.f2563f;
                                    Object andSet = atomicReference.getAndSet(null);
                                    boolean z12 = andSet == null;
                                    if (z11 && z12) {
                                        Throwable th3 = this.e;
                                        if (th3 != null) {
                                            b(th3);
                                        } else {
                                            a();
                                        }
                                        break;
                                    } else if (!z12) {
                                        dVar2.e(andSet);
                                        j12++;
                                    }
                                }
                            }
                        }
                        if (j12 == j11) {
                            if (this.c.c()) {
                                atomicReference.lazySet(null);
                            } else {
                                boolean z13 = this.f2563f;
                                boolean z14 = atomicReference.get() == null;
                                if (z13 && z14) {
                                    Throwable th4 = this.e;
                                    if (th4 != null) {
                                        b(th4);
                                    } else {
                                        a();
                                    }
                                }
                            }
                        }
                        if (j12 != 0) {
                            e3.d.p(this, j12);
                        }
                        iAddAndGet2 = this.f2564g.addAndGet(-iAddAndGet2);
                        break;
                    } while (iAddAndGet2 != 0);
                }
                break;
        }
    }

    public i(x7.d dVar) {
        super(dVar);
        this.f2565h = new AtomicReference();
        this.f2564g = new AtomicInteger();
    }
}
