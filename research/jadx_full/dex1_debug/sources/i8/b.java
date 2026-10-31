package i8;

import h8.z;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends AtomicReference implements z7.a, x7.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2731b = 1;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(x7.f fVar) {
        this.c = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        z7.a aVar;
        switch (this.f2731b) {
            case 0:
                Object obj = get();
                c8.a aVar2 = c8.a.f542b;
                if (obj == aVar2 || (aVar = (z7.a) getAndSet(aVar2)) == aVar2) {
                    return;
                }
                try {
                    ((x7.f) this.c).a();
                    if (aVar != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (aVar != null) {
                        aVar.dispose();
                    }
                }
            default:
                z zVar = (z) this.c;
                int i9 = zVar.c;
                AtomicInteger atomicInteger = zVar.f2622f;
                zVar.e.b(this);
                if (zVar.get() == 0) {
                    if (zVar.compareAndSet(0, 1)) {
                        boolean z8 = atomicInteger.decrementAndGet() == 0;
                        l8.b bVar = (l8.b) zVar.f2625i.get();
                        if (!z8 || (bVar != null && !bVar.isEmpty())) {
                            if (i9 != Integer.MAX_VALUE) {
                                zVar.f2626j.d(1L);
                            }
                            if (zVar.decrementAndGet() == 0) {
                                return;
                            }
                            zVar.h();
                            return;
                        }
                        p8.b bVar2 = zVar.f2623g;
                        bVar2.getClass();
                        Throwable thB = p8.d.b(bVar2);
                        x7.d dVar = zVar.f2621b;
                        if (thB != null) {
                            dVar.onError(thB);
                            return;
                        } else {
                            dVar.a();
                            return;
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                if (i9 != Integer.MAX_VALUE) {
                    zVar.f2626j.d(1L);
                }
                zVar.c();
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public void b(z7.a aVar) {
        c8.a.d(this, aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // x7.f
    public void c(Object obj) {
        l8.b bVarI;
        z zVar = (z) this.c;
        zVar.e.b(this);
        if (zVar.get() == 0) {
            if (zVar.compareAndSet(0, 1)) {
                boolean z8 = zVar.f2622f.decrementAndGet() == 0;
                if (zVar.d.get() != 0) {
                    zVar.f2621b.e(obj);
                    l8.b bVar = (l8.b) zVar.f2625i.get();
                    if (z8 && (bVar == null || bVar.isEmpty())) {
                        p8.b bVar2 = zVar.f2623g;
                        bVar2.getClass();
                        Throwable thB = p8.d.b(bVar2);
                        x7.d dVar = zVar.f2621b;
                        if (thB != null) {
                            dVar.onError(thB);
                            return;
                        } else {
                            dVar.a();
                            return;
                        }
                    }
                    e3.d.p(zVar.d, 1L);
                    if (zVar.c != Integer.MAX_VALUE) {
                        zVar.f2626j.d(1L);
                    }
                } else {
                    l8.b bVarI2 = zVar.i();
                    synchronized (bVarI2) {
                        bVarI2.offer(obj);
                    }
                }
                if (zVar.decrementAndGet() == 0) {
                    return;
                }
            } else {
                bVarI = zVar.i();
                synchronized (bVarI) {
                    bVarI.offer(obj);
                }
                zVar.f2622f.decrementAndGet();
                if (zVar.getAndIncrement() != 0) {
                    return;
                }
            }
        } else {
            bVarI = zVar.i();
            synchronized (bVarI) {
                bVarI.offer(obj);
                zVar.f2622f.decrementAndGet();
                if (zVar.getAndIncrement() != 0) {
                    return;
                }
            }
        }
        zVar.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        switch (this.f2731b) {
            case 0:
                c8.a.a(this);
                break;
            default:
                c8.a.a(this);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        z7.a aVar;
        switch (this.f2731b) {
            case 0:
                Object obj = get();
                c8.a aVar2 = c8.a.f542b;
                if (obj == aVar2 || (aVar = (z7.a) getAndSet(aVar2)) == aVar2) {
                    a.a.s(th);
                    return;
                }
                try {
                    ((x7.f) this.c).onError(th);
                    if (aVar != null) {
                        return;
                    } else {
                        return;
                    }
                } finally {
                    if (aVar != null) {
                        aVar.dispose();
                    }
                }
            default:
                z zVar = (z) this.c;
                c8.c cVar = zVar.e;
                cVar.b(this);
                p8.b bVar = zVar.f2623g;
                bVar.getClass();
                if (!p8.d.a(bVar, th)) {
                    a.a.s(th);
                    return;
                }
                zVar.f2626j.cancel();
                cVar.dispose();
                zVar.f2622f.decrementAndGet();
                zVar.c();
                return;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        switch (this.f2731b) {
            case 0:
                return b.class.getSimpleName() + "{" + super.toString() + "}";
            default:
                return super.toString();
        }
    }

    public b(z zVar) {
        this.c = zVar;
    }
}
