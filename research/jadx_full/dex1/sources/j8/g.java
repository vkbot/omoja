package j8;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends AtomicInteger implements z7.a, x7.h {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final f[] f3109p = new f[0];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final f[] f3110q = new f[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.h f3111b;
    public final e0.g c;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile e8.f f3112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f3113g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f3115i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public z7.a f3117k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f3118l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f3119m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3120n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3121o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p8.b f3114h = new p8.b();
    public final int d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicReference f3116j = new AtomicReference(f3109p);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(x7.h hVar, e0.g gVar, int i9) {
        this.f3111b = hVar;
        this.c = gVar;
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        if (this.f3113g) {
            return;
        }
        this.f3113g = true;
        f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        if (c8.a.e(this.f3117k, aVar)) {
            this.f3117k = aVar;
            this.f3111b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c() {
        if (!this.f3115i) {
            if (((Throwable) this.f3114h.get()) == null) {
                return false;
            }
            d();
            p8.b bVar = this.f3114h;
            bVar.getClass();
            Throwable thB = p8.d.b(bVar);
            if (thB != p8.d.f4702a) {
                this.f3111b.onError(thB);
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        f[] fVarArr;
        this.f3117k.dispose();
        AtomicReference atomicReference = this.f3116j;
        f[] fVarArr2 = (f[]) atomicReference.get();
        f[] fVarArr3 = f3110q;
        if (fVarArr2 == fVarArr3 || (fVarArr = (f[]) atomicReference.getAndSet(fVarArr3)) == fVarArr3) {
            return false;
        }
        for (f fVar : fVarArr) {
            fVar.getClass();
            c8.a.a(fVar);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        if (this.f3115i) {
            return;
        }
        this.f3115i = true;
        if (d()) {
            p8.b bVar = this.f3114h;
            bVar.getClass();
            Throwable thB = p8.d.b(bVar);
            if (thB == null || thB == p8.d.f4702a) {
                return;
            }
            a.a.s(thB);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v5, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r7v3, resolved type: x7.g */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.h
    public final void e(Object obj) {
        if (this.f3113g) {
            return;
        }
        try {
            x7.g gVar = (x7.g) this.c.apply(obj);
            if (this.d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        int i9 = this.f3121o;
                        if (i9 == this.d) {
                            throw null;
                        }
                        this.f3121o = i9 + 1;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (gVar instanceof Callable) {
                try {
                    Object objCall = ((Callable) gVar).call();
                    if (objCall != null) {
                        if (get() == 0 && compareAndSet(0, 1)) {
                            this.f3111b.e(objCall);
                            if (decrementAndGet() != 0) {
                                g();
                            }
                        } else {
                            e8.f bVar = this.f3112f;
                            if (bVar == null) {
                                bVar = this.d == Integer.MAX_VALUE ? new l8.b(this.e) : new l8.a(this.d);
                                this.f3112f = bVar;
                            }
                            if (bVar.offer(objCall)) {
                                if (getAndIncrement() != 0) {
                                    return;
                                }
                                g();
                            } else {
                                onError(new IllegalStateException("Scalar queue full?!"));
                            }
                        }
                    }
                } catch (Throwable th2) {
                    com.bumptech.glide.d.v(th2);
                    p8.b bVar2 = this.f3114h;
                    bVar2.getClass();
                    p8.d.a(bVar2, th2);
                    f();
                }
                if (this.d == Integer.MAX_VALUE) {
                    return;
                }
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
            long j9 = this.f3118l;
            this.f3118l = 1 + j9;
            f fVar = new f(this, j9);
            AtomicReference atomicReference = this.f3116j;
            while (true) {
                f[] fVarArr = (f[]) atomicReference.get();
                if (fVarArr == f3110q) {
                    c8.a.a(fVar);
                    return;
                }
                int length = fVarArr.length;
                f[] fVarArr2 = new f[length + 1];
                System.arraycopy(fVarArr, 0, fVarArr2, 0, length);
                fVarArr2[length] = fVar;
                do {
                    if (atomicReference.compareAndSet(fVarArr, fVarArr2)) {
                        gVar.c(fVar);
                        return;
                    }
                } while (atomicReference.get() == fVarArr);
            }
        } catch (Throwable th4) {
            com.bumptech.glide.d.v(th4);
            this.f3117k.dispose();
            onError(th4);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        if (getAndIncrement() == 0) {
            g();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        x7.h hVar = this.f3111b;
        int iAddAndGet = 1;
        while (!c()) {
            e8.f fVar = this.f3112f;
            if (fVar != null) {
                while (!c()) {
                    Object objPoll = fVar.poll();
                    if (objPoll != null) {
                        hVar.e(objPoll);
                    } else if (objPoll == null) {
                    }
                }
                return;
            }
            boolean z8 = this.f3113g;
            e8.f fVar2 = this.f3112f;
            f[] fVarArr = (f[]) this.f3116j.get();
            int length = fVarArr.length;
            if (this.d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z8 && ((fVar2 == null || fVar2.isEmpty()) && length == 0)) {
                p8.b bVar = this.f3114h;
                bVar.getClass();
                Throwable thB = p8.d.b(bVar);
                if (thB != p8.d.f4702a) {
                    if (thB == null) {
                        hVar.a();
                        return;
                    } else {
                        hVar.onError(thB);
                        return;
                    }
                }
                return;
            }
            boolean z9 = false;
            if (length != 0) {
                long j9 = this.f3119m;
                int i9 = this.f3120n;
                if (length <= i9 || fVarArr[i9].f3107b != j9) {
                    if (length <= i9) {
                        i9 = 0;
                    }
                    for (int i10 = 0; i10 < length && fVarArr[i9].f3107b != j9; i10++) {
                        i9++;
                        if (i9 == length) {
                            i9 = 0;
                        }
                    }
                    this.f3120n = i9;
                    this.f3119m = fVarArr[i9].f3107b;
                }
                int i11 = 0;
                boolean z10 = false;
                while (i11 < length) {
                    if (c()) {
                        return;
                    }
                    f fVar3 = fVarArr[i9];
                    while (!c()) {
                        e8.g gVar = fVar3.e;
                        if (gVar != null) {
                            do {
                                try {
                                    Object objPoll2 = gVar.poll();
                                    if (objPoll2 != null) {
                                        hVar.e(objPoll2);
                                    } else if (objPoll2 == null) {
                                    }
                                } catch (Throwable th2) {
                                    com.bumptech.glide.d.v(th2);
                                    c8.a.a(fVar3);
                                    p8.b bVar2 = this.f3114h;
                                    bVar2.getClass();
                                    p8.d.a(bVar2, th2);
                                    if (c()) {
                                        return;
                                    }
                                    h(fVar3);
                                    i11++;
                                    z10 = true;
                                }
                            } while (!c());
                            return;
                        }
                        boolean z11 = fVar3.d;
                        e8.g gVar2 = fVar3.e;
                        if (z11 && (gVar2 == null || gVar2.isEmpty())) {
                            h(fVar3);
                            if (c()) {
                                return;
                            } else {
                                z10 = true;
                            }
                        }
                        i9++;
                        if (i9 == length) {
                            i9 = 0;
                        }
                        i11++;
                    }
                    return;
                }
                this.f3120n = i9;
                this.f3119m = fVarArr[i9].f3107b;
                z9 = z10;
            }
            if (!z9) {
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else if (this.d != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        throw null;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public final void h(f fVar) {
        f[] fVarArr;
        while (true) {
            AtomicReference atomicReference = this.f3116j;
            f[] fVarArr2 = (f[]) atomicReference.get();
            int length = fVarArr2.length;
            if (length == 0) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    i9 = -1;
                    break;
                } else if (fVarArr2[i9] == fVar) {
                    break;
                } else {
                    i9++;
                }
            }
            if (i9 < 0) {
                return;
            }
            if (length == 1) {
                fVarArr = f3109p;
            } else {
                f[] fVarArr3 = new f[length - 1];
                System.arraycopy(fVarArr2, 0, fVarArr3, 0, i9);
                System.arraycopy(fVarArr2, i9 + 1, fVarArr3, i9, (length - i9) - 1);
                fVarArr = fVarArr3;
            }
            while (!atomicReference.compareAndSet(fVarArr2, fVarArr)) {
                if (atomicReference.get() != fVarArr2) {
                }
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        if (this.f3113g) {
            a.a.s(th);
            return;
        }
        p8.b bVar = this.f3114h;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
        } else {
            this.f3113g = true;
            f();
        }
    }
}
