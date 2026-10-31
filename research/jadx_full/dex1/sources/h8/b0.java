package h8;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b0 extends o8.a implements x7.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2523b;
    public final b8.c c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n9.b f2525g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e8.g f2526h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f2527i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f2528j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Iterator f2530l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2531m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2532n;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicReference f2529k = new AtomicReference();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicLong f2524f = new AtomicLong();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b0(x7.d dVar, c5.e eVar, int i9) {
        this.f2523b = dVar;
        this.c = eVar;
        this.d = i9;
        this.e = i9 - (i9 >> 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        if (this.f2527i) {
            return;
        }
        this.f2527i = true;
        j();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f2528j) {
            return;
        }
        this.f2528j = true;
        this.f2525g.cancel();
        if (getAndIncrement() == 0) {
            this.f2526h.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.f2530l = null;
        this.f2526h.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9)) {
            e3.d.a(this.f2524f, j9);
            j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2527i) {
            return;
        }
        if (this.f2532n != 0 || this.f2526h.offer(obj)) {
            j();
        } else {
            onError(new a8.d("Queue is full?!"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.f2525g, bVar)) {
            this.f2525g = bVar;
            if (bVar instanceof e8.d) {
                e8.d dVar = (e8.d) bVar;
                int iH = dVar.h(3);
                if (iH == 1) {
                    this.f2532n = iH;
                    this.f2526h = dVar;
                    this.f2527i = true;
                    this.f2523b.f(this);
                    return;
                }
                if (iH == 2) {
                    this.f2532n = iH;
                    this.f2526h = dVar;
                    this.f2523b.f(this);
                    bVar.d(this.d);
                    return;
                }
            }
            this.f2526h = new l8.a(this.d);
            this.f2523b.f(this);
            bVar.d(this.d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        return this.f2532n == 1 ? 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i(boolean z8, boolean z9, x7.d dVar, e8.g gVar) {
        if (this.f2528j) {
            this.f2530l = null;
            gVar.clear();
            return true;
        }
        if (!z8) {
            return false;
        }
        if (((Throwable) this.f2529k.get()) == null) {
            if (!z9) {
                return false;
            }
            dVar.a();
            return true;
        }
        Throwable thB = p8.d.b(this.f2529k);
        this.f2530l = null;
        gVar.clear();
        dVar.onError(thB);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.f2530l == null && this.f2526h.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v16, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r11v1, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r11v2, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r11v3, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r5v6, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r5v7, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r5v8, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j() {
        int i9;
        if (getAndIncrement() != 0) {
            return;
        }
        x7.d dVar = this.f2523b;
        e8.g gVar = this.f2526h;
        boolean z8 = false;
        int i10 = 1;
        Object[] objArr = this.f2532n != 1;
        Iterator it = this.f2530l;
        int iAddAndGet = 1;
        while (true) {
            if (it == null) {
                boolean z9 = this.f2527i;
                try {
                    Object objPoll = gVar.poll();
                    if (i(z9, objPoll == null ? i10 : z8 ? 1 : 0, dVar, gVar)) {
                        return;
                    }
                    if (objPoll != null) {
                        try {
                            it = ((Iterable) this.c.apply(objPoll)).iterator();
                            if (it.hasNext()) {
                                this.f2530l = it;
                            } else {
                                if (objArr != false) {
                                    int i11 = this.f2531m + i10;
                                    if (i11 == this.e) {
                                        this.f2531m = z8 ? 1 : 0;
                                        this.f2525g.d(i11);
                                    } else {
                                        this.f2531m = i11;
                                    }
                                }
                                it = null;
                            }
                        } catch (Throwable th) {
                            com.bumptech.glide.d.v(th);
                            this.f2525g.cancel();
                            p8.d.a(this.f2529k, th);
                            dVar.onError(p8.d.b(this.f2529k));
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    this.f2525g.cancel();
                    p8.d.a(this.f2529k, th2);
                    Throwable thB = p8.d.b(this.f2529k);
                    this.f2530l = null;
                    gVar.clear();
                    dVar.onError(thB);
                    return;
                }
            }
            if (it != null) {
                long j9 = this.f2524f.get();
                long j10 = 0;
                while (true) {
                    if (j10 == j9) {
                        i9 = i10;
                        break;
                    }
                    if (i(this.f2527i, z8, dVar, gVar)) {
                        return;
                    }
                    try {
                        Object next = it.next();
                        i9 = i10;
                        d8.b.a(next, "The iterator returned a null value");
                        dVar.e(next);
                        if (i(this.f2527i, z8, dVar, gVar)) {
                            return;
                        }
                        j10++;
                        try {
                            if (!it.hasNext()) {
                                if (objArr != false) {
                                    int i12 = this.f2531m + 1;
                                    if (i12 == this.e) {
                                        this.f2531m = z8 ? 1 : 0;
                                        this.f2525g.d(i12);
                                    } else {
                                        this.f2531m = i12;
                                    }
                                }
                                this.f2530l = null;
                                it = null;
                                break;
                            }
                            i10 = i9;
                        } catch (Throwable th3) {
                            com.bumptech.glide.d.v(th3);
                            this.f2530l = null;
                            this.f2525g.cancel();
                            p8.d.a(this.f2529k, th3);
                            dVar.onError(p8.d.b(this.f2529k));
                            return;
                        }
                    } catch (Throwable th4) {
                        com.bumptech.glide.d.v(th4);
                        this.f2530l = null;
                        this.f2525g.cancel();
                        p8.d.a(this.f2529k, th4);
                        dVar.onError(p8.d.b(this.f2529k));
                        return;
                    }
                }
                if (j10 == j9) {
                    if (i(this.f2527i, (gVar.isEmpty() && it == null) ? i9 : 0, dVar, gVar)) {
                        return;
                    }
                }
                if (j10 != 0 && j9 != Long.MAX_VALUE) {
                    this.f2524f.addAndGet(-j10);
                }
                if (it != null) {
                }
                i10 = i9;
                z8 = false;
            } else {
                i9 = i10;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            i10 = i9;
            z8 = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.f2527i || !p8.d.a(this.f2529k, th)) {
            a.a.s(th);
        } else {
            this.f2527i = true;
            j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        Iterator it = this.f2530l;
        while (it == null) {
            Object objPoll = this.f2526h.poll();
            if (objPoll != null) {
                it = ((Iterable) this.c.apply(objPoll)).iterator();
                if (it.hasNext()) {
                    this.f2530l = it;
                    break;
                }
                it = null;
            } else {
                return null;
            }
        }
        Object next = it.next();
        d8.b.a(next, "The iterator returned a null value");
        if (!it.hasNext()) {
            this.f2530l = null;
        }
        return next;
    }
}
