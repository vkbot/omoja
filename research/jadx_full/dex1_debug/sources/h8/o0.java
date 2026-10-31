package h8;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o0 extends AtomicInteger implements x7.d, z7.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n0[] f2588j = new n0[0];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final n0[] f2589k = new n0[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f2590b;
    public final int c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile Serializable f2592g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2593h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile e8.g f2594i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f2591f = new AtomicReference();
    public final AtomicReference d = new AtomicReference(f2588j);
    public final AtomicBoolean e = new AtomicBoolean();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o0(AtomicReference atomicReference, int i9) {
        this.f2590b = atomicReference;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        if (this.f2592g == null) {
            this.f2592g = p8.f.f4704b;
            c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b(Object obj, boolean z8) {
        int i9 = 0;
        if (obj != null) {
            p8.f fVar = p8.f.f4704b;
            n0[] n0VarArr = f2589k;
            AtomicReference atomicReference = this.d;
            AtomicReference atomicReference2 = this.f2590b;
            if (obj != fVar) {
                Throwable th = ((p8.e) obj).f4703b;
                while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                }
                n0[] n0VarArr2 = (n0[]) atomicReference.getAndSet(n0VarArr);
                if (n0VarArr2.length != 0) {
                    int length = n0VarArr2.length;
                    while (i9 < length) {
                        n0VarArr2[i9].f2585b.onError(th);
                        i9++;
                    }
                } else {
                    a.a.s(th);
                }
                return true;
            }
            if (z8) {
                while (!atomicReference2.compareAndSet(this, null) && atomicReference2.get() == this) {
                }
                n0[] n0VarArr3 = (n0[]) atomicReference.getAndSet(n0VarArr);
                int length2 = n0VarArr3.length;
                while (i9 < length2) {
                    n0VarArr3[i9].f2585b.a();
                    i9++;
                }
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        boolean z8;
        Object objPoll;
        n0[] n0VarArr;
        Object objPoll2;
        if (getAndIncrement() != 0) {
            return;
        }
        AtomicReference atomicReference = this.d;
        boolean z9 = true;
        n0[] n0VarArr2 = (n0[]) atomicReference.get();
        int iAddAndGet = 1;
        while (true) {
            Object obj = this.f2592g;
            e8.g gVar = this.f2594i;
            boolean z10 = (gVar == null || gVar.isEmpty()) ? z9 : false;
            if (b(obj, z10)) {
                return;
            }
            if (z10) {
                z8 = z9;
            } else {
                int length = n0VarArr2.length;
                int i9 = 0;
                long jMin = Long.MAX_VALUE;
                for (n0 n0Var : n0VarArr2) {
                    long j9 = n0Var.get();
                    if (j9 != Long.MIN_VALUE) {
                        jMin = Math.min(jMin, j9 - n0Var.d);
                    } else {
                        i9++;
                    }
                }
                long j10 = 1;
                if (length == i9) {
                    Object obj2 = this.f2592g;
                    try {
                        objPoll = gVar.poll();
                    } catch (Throwable th) {
                        com.bumptech.glide.d.v(th);
                        ((n9.b) this.f2591f.get()).cancel();
                        p8.e eVar = new p8.e(th);
                        this.f2592g = eVar;
                        obj2 = eVar;
                        objPoll = null;
                    }
                    if (b(obj2, objPoll == null ? z9 : false)) {
                        return;
                    }
                    if (this.f2593h != z9) {
                        ((n9.b) this.f2591f.get()).d(1L);
                    }
                    z8 = z9;
                    n0VarArr = n0VarArr2;
                } else {
                    int i10 = 0;
                    while (true) {
                        long j11 = i10;
                        if (j11 < jMin) {
                            Object obj3 = this.f2592g;
                            try {
                                objPoll2 = gVar.poll();
                            } catch (Throwable th2) {
                                com.bumptech.glide.d.v(th2);
                                ((n9.b) this.f2591f.get()).cancel();
                                p8.e eVar2 = new p8.e(th2);
                                this.f2592g = eVar2;
                                obj3 = eVar2;
                                objPoll2 = null;
                            }
                            boolean z11 = objPoll2 == null ? z9 : false;
                            if (b(obj3, z11)) {
                                return;
                            }
                            if (z11) {
                                z10 = z11;
                            } else {
                                int length2 = n0VarArr2.length;
                                int i11 = 0;
                                boolean z12 = false;
                                while (i11 < length2) {
                                    long j12 = j10;
                                    n0 n0Var2 = n0VarArr2[i11];
                                    long j13 = n0Var2.get();
                                    if (j13 != Long.MIN_VALUE) {
                                        if (j13 != Long.MAX_VALUE) {
                                            n0Var2.d += j12;
                                        }
                                        n0Var2.f2585b.e(objPoll2);
                                    } else {
                                        z12 = true;
                                    }
                                    i11++;
                                    n0VarArr2 = n0VarArr2;
                                    j10 = j12;
                                }
                                n0[] n0VarArr3 = n0VarArr2;
                                long j14 = j10;
                                i10++;
                                n0[] n0VarArr4 = (n0[]) atomicReference.get();
                                if (z12 || n0VarArr4 != n0VarArr3) {
                                    n0VarArr2 = n0VarArr4;
                                    z9 = true;
                                } else {
                                    n0VarArr2 = n0VarArr3;
                                    z10 = z11;
                                    j10 = j14;
                                    z9 = true;
                                }
                            }
                        }
                        n0VarArr = n0VarArr2;
                        if (i10 > 0) {
                            z8 = true;
                            if (this.f2593h != 1) {
                                ((n9.b) this.f2591f.get()).d(j11);
                            }
                        } else {
                            z8 = true;
                        }
                        if (jMin == 0 || z10) {
                        }
                        z9 = z8;
                    }
                }
                n0VarArr2 = n0VarArr;
                z9 = z8;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
            n0VarArr2 = (n0[]) atomicReference.get();
            z9 = z8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean d() {
        return this.d.get() == f2589k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        AtomicReference atomicReference;
        AtomicReference atomicReference2 = this.d;
        Object obj = atomicReference2.get();
        Object obj2 = f2589k;
        if (obj == obj2 || ((n0[]) atomicReference2.getAndSet(obj2)) == obj2) {
            return;
        }
        do {
            atomicReference = this.f2590b;
            if (atomicReference.compareAndSet(this, null)) {
                break;
            }
        } while (atomicReference.get() == this);
        o8.f.a(this.f2591f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2593h != 0 || this.f2594i.offer(obj)) {
            c();
        } else {
            onError(new a8.d("Prefetch queue is full?!"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.b(this.f2591f, bVar)) {
            if (bVar instanceof e8.d) {
                e8.d dVar = (e8.d) bVar;
                int iH = dVar.h(3);
                if (iH == 1) {
                    this.f2593h = iH;
                    this.f2594i = dVar;
                    this.f2592g = p8.f.f4704b;
                    c();
                    return;
                }
                if (iH == 2) {
                    this.f2593h = iH;
                    this.f2594i = dVar;
                    bVar.d(this.c);
                    return;
                }
            }
            this.f2594i = new l8.a(this.c);
            bVar.d(this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public final void h(n0 n0Var) {
        n0[] n0VarArr;
        while (true) {
            AtomicReference atomicReference = this.d;
            n0[] n0VarArr2 = (n0[]) atomicReference.get();
            int length = n0VarArr2.length;
            if (length == 0) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    i9 = -1;
                    break;
                } else if (n0VarArr2[i9].equals(n0Var)) {
                    break;
                } else {
                    i9++;
                }
            }
            if (i9 < 0) {
                return;
            }
            if (length == 1) {
                n0VarArr = f2588j;
            } else {
                n0[] n0VarArr3 = new n0[length - 1];
                System.arraycopy(n0VarArr2, 0, n0VarArr3, 0, i9);
                System.arraycopy(n0VarArr2, i9 + 1, n0VarArr3, i9, (length - i9) - 1);
                n0VarArr = n0VarArr3;
            }
            while (!atomicReference.compareAndSet(n0VarArr2, n0VarArr)) {
                if (atomicReference.get() != n0VarArr2) {
                }
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.f2592g != null) {
            a.a.s(th);
        } else {
            this.f2592g = new p8.e(th);
            c();
        }
    }
}
