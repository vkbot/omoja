package h8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final x7.d f2533n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f2534o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(x7.d dVar, f5.q qVar, int i9, boolean z8) {
        super(qVar, i9);
        this.f2533n = dVar;
        this.f2534o = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.b
    public final void b() {
        if (getAndIncrement() == 0) {
            while (!this.f2519j) {
                if (!this.f2521l) {
                    boolean z8 = this.f2518i;
                    if (z8 && !this.f2534o && ((Throwable) this.f2520k.get()) != null) {
                        x7.d dVar = this.f2533n;
                        p8.b bVar = this.f2520k;
                        bVar.getClass();
                        dVar.onError(p8.d.b(bVar));
                        return;
                    }
                    try {
                        Object objPoll = this.f2517h.poll();
                        boolean z9 = objPoll == null;
                        if (z8 && z9) {
                            p8.b bVar2 = this.f2520k;
                            bVar2.getClass();
                            Throwable thB = p8.d.b(bVar2);
                            x7.d dVar2 = this.f2533n;
                            if (thB != null) {
                                dVar2.onError(thB);
                                return;
                            } else {
                                dVar2.a();
                                return;
                            }
                        }
                        if (!z9) {
                            try {
                                Object objApply = this.c.apply(objPoll);
                                d8.b.a(objApply, "The mapper returned a null Publisher");
                                Callable callable = (n9.a) objApply;
                                if (this.f2522m != 1) {
                                    int i9 = this.f2516g + 1;
                                    if (i9 == this.e) {
                                        this.f2516g = 0;
                                        this.f2515f.d(i9);
                                    } else {
                                        this.f2516g = i9;
                                    }
                                }
                                if (callable instanceof Callable) {
                                    try {
                                        Object objCall = callable.call();
                                        if (objCall == null) {
                                            continue;
                                        } else if (this.f2514b.f2544h) {
                                            this.f2533n.e(objCall);
                                        } else {
                                            this.f2521l = true;
                                            e eVar = this.f2514b;
                                            eVar.i(new f(objCall, eVar));
                                        }
                                    } catch (Throwable th) {
                                        com.bumptech.glide.d.v(th);
                                        this.f2515f.cancel();
                                        p8.b bVar3 = this.f2520k;
                                        bVar3.getClass();
                                        p8.d.a(bVar3, th);
                                        x7.d dVar3 = this.f2533n;
                                        p8.b bVar4 = this.f2520k;
                                        bVar4.getClass();
                                        dVar3.onError(p8.d.b(bVar4));
                                        return;
                                    }
                                } else {
                                    this.f2521l = true;
                                    callable.a(this.f2514b);
                                }
                            } catch (Throwable th2) {
                                com.bumptech.glide.d.v(th2);
                                this.f2515f.cancel();
                                p8.b bVar5 = this.f2520k;
                                bVar5.getClass();
                                p8.d.a(bVar5, th2);
                                x7.d dVar4 = this.f2533n;
                                p8.b bVar6 = this.f2520k;
                                bVar6.getClass();
                                dVar4.onError(p8.d.b(bVar6));
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        com.bumptech.glide.d.v(th3);
                        this.f2515f.cancel();
                        p8.b bVar7 = this.f2520k;
                        bVar7.getClass();
                        p8.d.a(bVar7, th3);
                        x7.d dVar5 = this.f2533n;
                        p8.b bVar8 = this.f2520k;
                        bVar8.getClass();
                        dVar5.onError(p8.d.b(bVar8));
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.b
    public final void c(Throwable th) {
        p8.b bVar = this.f2520k;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
            return;
        }
        if (!this.f2534o) {
            this.f2515f.cancel();
            this.f2518i = true;
        }
        this.f2521l = false;
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f2519j) {
            return;
        }
        this.f2519j = true;
        this.f2514b.cancel();
        this.f2515f.cancel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        this.f2514b.d(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.b
    public final void h(Object obj) {
        this.f2533n.e(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.b
    public final void i() {
        this.f2533n.f(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        p8.b bVar = this.f2520k;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
        } else {
            this.f2518i = true;
            b();
        }
    }
}
