package h8;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y extends AtomicInteger implements x7.d, n9.b {
    public static final x[] r = new x[0];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final x[] f2607s = new x[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2608b;
    public final b8.c c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile e8.f f2609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f2610g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p8.b f2611h = new p8.b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f2612i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicReference f2613j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicLong f2614k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public n9.b f2615l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f2616m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f2617n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f2620q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y(x7.d dVar, c5.e eVar, int i9, int i10) {
        AtomicReference atomicReference = new AtomicReference();
        this.f2613j = atomicReference;
        this.f2614k = new AtomicLong();
        this.f2608b = dVar;
        this.c = eVar;
        this.d = i9;
        this.e = i10;
        this.f2620q = Math.max(1, i9 >> 1);
        atomicReference.lazySet(r);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        if (this.f2610g) {
            return;
        }
        this.f2610g = true;
        c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean b() {
        if (this.f2612i) {
            e8.f fVar = this.f2609f;
            if (fVar != null) {
                fVar.clear();
                return true;
            }
        } else {
            if (this.f2611h.get() == null) {
                return false;
            }
            e8.f fVar2 = this.f2609f;
            if (fVar2 != null) {
                fVar2.clear();
            }
            p8.b bVar = this.f2611h;
            bVar.getClass();
            Throwable thB = p8.d.b(bVar);
            if (thB != p8.d.f4702a) {
                this.f2608b.onError(thB);
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        if (getAndIncrement() == 0) {
            h();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        e8.f fVar;
        x[] xVarArr;
        if (this.f2612i) {
            return;
        }
        this.f2612i = true;
        this.f2615l.cancel();
        AtomicReference atomicReference = this.f2613j;
        x[] xVarArr2 = (x[]) atomicReference.get();
        x[] xVarArr3 = f2607s;
        if (xVarArr2 != xVarArr3 && (xVarArr = (x[]) atomicReference.getAndSet(xVarArr3)) != xVarArr3) {
            for (x xVar : xVarArr) {
                xVar.getClass();
                o8.f.a(xVar);
            }
            p8.b bVar = this.f2611h;
            bVar.getClass();
            Throwable thB = p8.d.b(bVar);
            if (thB != null && thB != p8.d.f4702a) {
                a.a.s(thB);
            }
        }
        if (getAndIncrement() != 0 || (fVar = this.f2609f) == null) {
            return;
        }
        fVar.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9)) {
            e3.d.a(this.f2614k, j9);
            c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v6, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2610g) {
            return;
        }
        try {
            Object objApply = this.c.apply(obj);
            d8.b.a(objApply, "The mapper returned a null Publisher");
            Callable callable = (n9.a) objApply;
            if (callable instanceof Callable) {
                try {
                    Object objCall = callable.call();
                    if (objCall == null) {
                        if (this.d == Integer.MAX_VALUE || this.f2612i) {
                            return;
                        }
                        int i9 = this.f2619p + 1;
                        this.f2619p = i9;
                        int i10 = this.f2620q;
                        if (i9 == i10) {
                            this.f2619p = 0;
                            this.f2615l.d(i10);
                            return;
                        }
                        return;
                    }
                    if (get() == 0 && compareAndSet(0, 1)) {
                        long j9 = this.f2614k.get();
                        e8.f fVarI = this.f2609f;
                        if (j9 == 0 || !(fVarI == null || fVarI.isEmpty())) {
                            if (fVarI == null) {
                                fVarI = i();
                            }
                            if (!fVarI.offer(objCall)) {
                                onError(new IllegalStateException("Scalar queue full?!"));
                                return;
                            }
                        } else {
                            this.f2608b.e(objCall);
                            if (j9 != Long.MAX_VALUE) {
                                this.f2614k.decrementAndGet();
                            }
                            if (this.d != Integer.MAX_VALUE && !this.f2612i) {
                                int i11 = this.f2619p + 1;
                                this.f2619p = i11;
                                int i12 = this.f2620q;
                                if (i11 == i12) {
                                    this.f2619p = 0;
                                    this.f2615l.d(i12);
                                }
                            }
                        }
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    } else if (!i().offer(objCall)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    } else if (getAndIncrement() != 0) {
                        return;
                    }
                    h();
                    return;
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    p8.b bVar = this.f2611h;
                    bVar.getClass();
                    p8.d.a(bVar, th);
                    c();
                    return;
                }
            }
            long j10 = this.f2616m;
            this.f2616m = 1 + j10;
            x xVar = new x(this, j10);
            AtomicReference atomicReference = this.f2613j;
            while (true) {
                x[] xVarArr = (x[]) atomicReference.get();
                if (xVarArr == f2607s) {
                    o8.f.a(xVar);
                    return;
                }
                int length = xVarArr.length;
                x[] xVarArr2 = new x[length + 1];
                System.arraycopy(xVarArr, 0, xVarArr2, 0, length);
                xVarArr2[length] = xVar;
                do {
                    if (atomicReference.compareAndSet(xVarArr, xVarArr2)) {
                        callable.a(xVar);
                        return;
                    }
                } while (atomicReference.get() == xVarArr);
            }
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            this.f2615l.cancel();
            onError(th2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.f2615l, bVar)) {
            this.f2615l = bVar;
            this.f2608b.f(this);
            if (this.f2612i) {
                return;
            }
            int i9 = this.d;
            if (i9 == Integer.MAX_VALUE) {
                bVar.d(Long.MAX_VALUE);
            } else {
                bVar.d(i9);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:111:0x0179  */
    /* JADX WARN: Code duplicated, block: B:115:0x0183  */
    /* JADX WARN: Code duplicated, block: B:117:0x0187  */
    /* JADX WARN: Code duplicated, block: B:133:0x0100 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:138:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:140:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x018f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0181 A[EDGE_INSN: B:153:0x0181->B:114:0x0181 BREAK  A[LOOP:3: B:65:0x00dc->B:118:0x0188], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x0188 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x013c A[EDGE_INSN: B:160:0x013c->B:91:0x013c BREAK  A[LOOP:5: B:77:0x00fc->B:85:0x0112], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00de  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:82:0x0107  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112 A[LOOP:5: B:77:0x00fc->B:85:0x0112, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:93:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x0142  */
    /* JADX WARN: Code duplicated, block: B:95:0x014b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0155  */
    public final void h() {
        boolean z8;
        long j9;
        long j10;
        boolean z9;
        long j11;
        int i9;
        boolean z10;
        int i10;
        x xVar;
        Object objPoll;
        e8.g gVar;
        boolean z11;
        Object obj;
        x7.d dVar = this.f2608b;
        int iAddAndGet = 1;
        while (!b()) {
            e8.f fVar = this.f2609f;
            long jAddAndGet = this.f2614k.get();
            boolean z12 = jAddAndGet == Long.MAX_VALUE;
            long j12 = 0;
            if (fVar != null) {
                j9 = 0;
                do {
                    long j13 = 0;
                    obj = null;
                    while (true) {
                        if (jAddAndGet == 0) {
                            z8 = true;
                            break;
                        }
                        z8 = true;
                        Object objPoll2 = fVar.poll();
                        if (b()) {
                            return;
                        }
                        if (objPoll2 == null) {
                            obj = objPoll2;
                            break;
                        }
                        dVar.e(objPoll2);
                        j9++;
                        j13++;
                        jAddAndGet--;
                        obj = objPoll2;
                    }
                    if (j13 != 0) {
                        jAddAndGet = z12 ? Long.MAX_VALUE : this.f2614k.addAndGet(-j13);
                    }
                    if (jAddAndGet == 0) {
                        break;
                    }
                } while (obj != null);
            } else {
                z8 = true;
                j9 = 0;
            }
            boolean z13 = this.f2610g;
            e8.f fVar2 = this.f2609f;
            x[] xVarArr = (x[]) this.f2613j.get();
            int length = xVarArr.length;
            if (z13 && ((fVar2 == null || fVar2.isEmpty()) && length == 0)) {
                p8.b bVar = this.f2611h;
                bVar.getClass();
                Throwable thB = p8.d.b(bVar);
                if (thB != p8.d.f4702a) {
                    if (thB == null) {
                        dVar.a();
                        return;
                    } else {
                        dVar.onError(thB);
                        return;
                    }
                }
                return;
            }
            if (length != 0) {
                long j14 = this.f2617n;
                int i11 = this.f2618o;
                if (length > i11) {
                    j11 = 1;
                    if (xVarArr[i11].f2602b != j14) {
                    }
                    i9 = i11;
                    z10 = false;
                    i10 = 0;
                    while (true) {
                        if (i10 < length) {
                            xVarArr = xVarArr;
                            j10 = j12;
                            break;
                        }
                        if (b()) {
                            return;
                        }
                        xVar = xVarArr[i9];
                        objPoll = null;
                        while (!b()) {
                            gVar = xVar.f2604g;
                            if (gVar == null) {
                                xVarArr = xVarArr;
                                j10 = j12;
                            } else {
                                j10 = j12;
                                while (jAddAndGet != j10) {
                                    try {
                                        objPoll = gVar.poll();
                                        if (objPoll == null) {
                                            break;
                                        }
                                        dVar.e(objPoll);
                                        if (b()) {
                                            return;
                                        }
                                        jAddAndGet -= j11;
                                        j12 += j11;
                                    } catch (Throwable th) {
                                        com.bumptech.glide.d.v(th);
                                        o8.f.a(xVar);
                                        p8.b bVar2 = this.f2611h;
                                        bVar2.getClass();
                                        p8.d.a(bVar2, th);
                                        this.f2615l.cancel();
                                        if (b()) {
                                            return;
                                        }
                                        j(xVar);
                                        i10++;
                                        xVarArr = xVarArr;
                                        z10 = z8;
                                    }
                                }
                                if (j12 != j10) {
                                    if (z12) {
                                        jAddAndGet = Long.MAX_VALUE;
                                    } else {
                                        jAddAndGet = this.f2614k.addAndGet(-j12);
                                    }
                                    xVar.b(j12);
                                } else {
                                    xVarArr = xVarArr;
                                }
                                if (jAddAndGet == j10 && objPoll != null) {
                                    xVarArr = xVarArr;
                                    j12 = j10;
                                }
                            }
                            z11 = xVar.f2603f;
                            e8.g gVar2 = xVar.f2604g;
                            if (z11 && (gVar2 == null || gVar2.isEmpty())) {
                                j(xVar);
                                if (b()) {
                                    return;
                                }
                                j9 += j11;
                                z10 = z8;
                            }
                            if (jAddAndGet == j10) {
                                break;
                            }
                            i9++;
                            if (i9 == length) {
                                i9 = 0;
                            }
                            i10++;
                            xVarArr = xVarArr;
                            j12 = j10;
                        }
                        return;
                    }
                    z9 = z10;
                    this.f2618o = i9;
                    this.f2617n = xVarArr[i9].f2602b;
                } else {
                    j11 = 1;
                }
                if (length <= i11) {
                    i11 = 0;
                }
                for (int i12 = 0; i12 < length && xVarArr[i11].f2602b != j14; i12++) {
                    i11++;
                    if (i11 == length) {
                        i11 = 0;
                    }
                }
                this.f2618o = i11;
                this.f2617n = xVarArr[i11].f2602b;
                i9 = i11;
                z10 = false;
                i10 = 0;
                while (true) {
                    if (i10 < length) {
                        xVarArr = xVarArr;
                        j10 = j12;
                        break;
                    }
                    if (b()) {
                        return;
                    }
                    xVar = xVarArr[i9];
                    objPoll = null;
                    while (!b()) {
                        gVar = xVar.f2604g;
                        if (gVar == null) {
                            xVarArr = xVarArr;
                            j10 = j12;
                        } else {
                            j10 = j12;
                            while (jAddAndGet != j10) {
                                objPoll = gVar.poll();
                                if (objPoll == null) {
                                    break;
                                    break;
                                }
                                dVar.e(objPoll);
                                if (b()) {
                                    return;
                                }
                                jAddAndGet -= j11;
                                j12 += j11;
                            }
                            if (j12 != j10) {
                                if (z12) {
                                    jAddAndGet = this.f2614k.addAndGet(-j12);
                                } else {
                                    jAddAndGet = Long.MAX_VALUE;
                                }
                                xVar.b(j12);
                            } else {
                                xVarArr = xVarArr;
                            }
                            if (jAddAndGet == j10) {
                            }
                        }
                        z11 = xVar.f2603f;
                        e8.g gVar3 = xVar.f2604g;
                        if (z11) {
                            j(xVar);
                            if (b()) {
                                return;
                            }
                            j9 += j11;
                            z10 = z8;
                        }
                        if (jAddAndGet == j10) {
                            break;
                            break;
                        }
                        i9++;
                        if (i9 == length) {
                            i9 = 0;
                        }
                        i10++;
                        xVarArr = xVarArr;
                        j12 = j10;
                    }
                    return;
                }
                z9 = z10;
                this.f2618o = i9;
                this.f2617n = xVarArr[i9].f2602b;
            } else {
                j10 = 0;
                z9 = false;
            }
            long j15 = j9;
            if (j15 != j10 && !this.f2612i) {
                this.f2615l.d(j15);
            }
            if (!z9 && (iAddAndGet = addAndGet(-iAddAndGet)) == 0) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final e8.f i() {
        e8.f bVar = this.f2609f;
        if (bVar == null) {
            bVar = this.d == Integer.MAX_VALUE ? new l8.b(this.e) : new l8.a(this.d);
            this.f2609f = bVar;
        }
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    public final void j(x xVar) {
        x[] xVarArr;
        while (true) {
            AtomicReference atomicReference = this.f2613j;
            x[] xVarArr2 = (x[]) atomicReference.get();
            int length = xVarArr2.length;
            if (length == 0) {
                return;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    i9 = -1;
                    break;
                } else if (xVarArr2[i9] == xVar) {
                    break;
                } else {
                    i9++;
                }
            }
            if (i9 < 0) {
                return;
            }
            if (length == 1) {
                xVarArr = r;
            } else {
                x[] xVarArr3 = new x[length - 1];
                System.arraycopy(xVarArr2, 0, xVarArr3, 0, i9);
                System.arraycopy(xVarArr2, i9 + 1, xVarArr3, i9, (length - i9) - 1);
                xVarArr = xVarArr3;
            }
            while (!atomicReference.compareAndSet(xVarArr2, xVarArr)) {
                if (atomicReference.get() != xVarArr2) {
                }
            }
            return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.f2610g) {
            a.a.s(th);
            return;
        }
        p8.b bVar = this.f2611h;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
        } else {
            this.f2610g = true;
            c();
        }
    }
}
