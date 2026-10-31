package x8;

import a9.u;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.time.DurationKt;
import v8.u1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class k extends u {
    public final b f;
    public final AtomicReferenceArray g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(long j, k kVar, b bVar, int i) {
        super(j, kVar, i);
        this.f = bVar;
        this.g = new AtomicReferenceArray(d.b * 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.u
    public final int f() {
        return d.b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // a9.u
    public final void g(int i, CoroutineContext coroutineContext) {
        b bVar;
        int i2 = d.b;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        this.g.get(i * 2);
        while (true) {
            Object objK = k(i);
            boolean z2 = objK instanceof u1;
            bVar = this.f;
            if (z2 || (objK instanceof s)) {
                if (j(i, objK, z ? d.j : d.k)) {
                    m(i, null);
                    l(i, !z);
                    if (z) {
                        bVar.getClass();
                        return;
                    }
                    return;
                }
            } else {
                if (objK == d.j || objK == d.k) {
                    break;
                }
                if (objK != d.g && objK != d.f) {
                    if (objK == d.i || objK == d.d || objK == d.l) {
                        return;
                    }
                    org.apache.commons.net.ftp.a.c(objK, "unexpected state: ");
                    return;
                }
            }
        }
        m(i, null);
        if (z) {
            bVar.getClass();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean j(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.g;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object k(int i) {
        return this.g.get((i * 2) + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(int i, boolean z) {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j2;
        if (z) {
            b bVar = this.f;
            bVar.getClass();
            long j3 = (this.d * ((long) d.b)) + ((long) i);
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = b.f;
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = b.e;
            if (!bVar.t()) {
                while (atomicLongFieldUpdater3.get(bVar) <= j3) {
                }
                int i2 = d.c;
                for (int i3 = 0; i3 < i2; i3++) {
                    long j4 = atomicLongFieldUpdater3.get(bVar);
                    if (j4 != (DurationKt.MAX_MILLIS & atomicLongFieldUpdater2.get(bVar)) || j4 != atomicLongFieldUpdater3.get(bVar)) {
                    }
                }
                do {
                    j = atomicLongFieldUpdater2.get(bVar);
                } while (!atomicLongFieldUpdater2.compareAndSet(bVar, j, (j & DurationKt.MAX_MILLIS) + 4611686018427387904L));
                while (true) {
                    long j5 = atomicLongFieldUpdater3.get(bVar);
                    atomicLongFieldUpdater = b.f;
                    long j6 = atomicLongFieldUpdater.get(bVar);
                    long j7 = j6 & DurationKt.MAX_MILLIS;
                    boolean z2 = (j6 & 4611686018427387904L) != 0;
                    if (j5 == j7 && j5 == atomicLongFieldUpdater3.get(bVar)) {
                        break;
                    } else if (!z2) {
                        atomicLongFieldUpdater.compareAndSet(bVar, j6, 4611686018427387904L + j7);
                    }
                }
                do {
                    j2 = atomicLongFieldUpdater.get(bVar);
                } while (!atomicLongFieldUpdater.compareAndSet(bVar, j2, j2 & DurationKt.MAX_MILLIS));
            }
        }
        h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(int i, Object obj) {
        this.g.lazySet(i * 2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(int i, Object obj) {
        this.g.set((i * 2) + 1, obj);
    }
}
