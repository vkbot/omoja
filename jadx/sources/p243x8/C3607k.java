package p243x8;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.time.DurationKt;
import org.apache.commons.net.ftp.C2930a;
import p010a9.AbstractC0059u;
import p224v8.InterfaceC3427u1;

/* JADX INFO: renamed from: x8.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3607k extends AbstractC0059u {

    /* JADX INFO: renamed from: f */
    public final C3598b f10696f;

    /* JADX INFO: renamed from: g */
    public final AtomicReferenceArray f10697g;

    public C3607k(long j10, C3607k c3607k, C3598b c3598b, int i10) {
        super(j10, c3607k, i10);
        this.f10696f = c3598b;
        this.f10697g = new AtomicReferenceArray(AbstractC3600d.f10672b * 2);
    }

    @Override // p010a9.AbstractC0059u
    /* JADX INFO: renamed from: f */
    public final int mo139f() {
        return AbstractC3600d.f10672b;
    }

    @Override // p010a9.AbstractC0059u
    /* JADX INFO: renamed from: g */
    public final void mo140g(int i10, CoroutineContext coroutineContext) {
        C3598b c3598b;
        int i11 = AbstractC3600d.f10672b;
        boolean z9 = i10 >= i11;
        if (z9) {
            i10 -= i11;
        }
        this.f10697g.get(i10 * 2);
        while (true) {
            Object objM5755k = m5755k(i10);
            boolean z10 = objM5755k instanceof InterfaceC3427u1;
            c3598b = this.f10696f;
            if (z10 || (objM5755k instanceof C3615s)) {
                if (m5754j(i10, objM5755k, z9 ? AbstractC3600d.f10680j : AbstractC3600d.f10681k)) {
                    m5757m(i10, null);
                    m5756l(i10, !z9);
                    if (z9) {
                        c3598b.getClass();
                        return;
                    }
                    return;
                }
            } else {
                if (objM5755k == AbstractC3600d.f10680j || objM5755k == AbstractC3600d.f10681k) {
                    break;
                }
                if (objM5755k != AbstractC3600d.f10677g && objM5755k != AbstractC3600d.f10676f) {
                    if (objM5755k == AbstractC3600d.f10679i || objM5755k == AbstractC3600d.f10674d || objM5755k == AbstractC3600d.f10682l) {
                        return;
                    }
                    C2930a.m4661c(objM5755k, "unexpected state: ");
                    return;
                }
            }
        }
        m5757m(i10, null);
        if (z9) {
            c3598b.getClass();
        }
    }

    /* JADX INFO: renamed from: j */
    public final boolean m5754j(int i10, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i11 = (i10 * 2) + 1;
        do {
            atomicReferenceArray = this.f10697g;
            if (atomicReferenceArray.compareAndSet(i11, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i11) == obj);
        return false;
    }

    /* JADX INFO: renamed from: k */
    public final Object m5755k(int i10) {
        return this.f10697g.get((i10 * 2) + 1);
    }

    /* JADX INFO: renamed from: l */
    public final void m5756l(int i10, boolean z9) {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j11;
        if (z9) {
            C3598b c3598b = this.f10696f;
            c3598b.getClass();
            long j12 = (this.f149d * ((long) AbstractC3600d.f10672b)) + ((long) i10);
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = C3598b.f10663f;
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = C3598b.f10662e;
            if (!c3598b.m5746t()) {
                while (atomicLongFieldUpdater3.get(c3598b) <= j12) {
                }
                int i11 = AbstractC3600d.f10673c;
                for (int i12 = 0; i12 < i11; i12++) {
                    long j13 = atomicLongFieldUpdater3.get(c3598b);
                    if (j13 != (DurationKt.MAX_MILLIS & atomicLongFieldUpdater2.get(c3598b)) || j13 != atomicLongFieldUpdater3.get(c3598b)) {
                    }
                }
                do {
                    j10 = atomicLongFieldUpdater2.get(c3598b);
                } while (!atomicLongFieldUpdater2.compareAndSet(c3598b, j10, (j10 & DurationKt.MAX_MILLIS) + 4611686018427387904L));
                while (true) {
                    long j14 = atomicLongFieldUpdater3.get(c3598b);
                    atomicLongFieldUpdater = C3598b.f10663f;
                    long j15 = atomicLongFieldUpdater.get(c3598b);
                    long j16 = j15 & DurationKt.MAX_MILLIS;
                    boolean z10 = (j15 & 4611686018427387904L) != 0;
                    if (j14 == j16 && j14 == atomicLongFieldUpdater3.get(c3598b)) {
                        break;
                    } else if (!z10) {
                        atomicLongFieldUpdater.compareAndSet(c3598b, j15, 4611686018427387904L + j16);
                    }
                }
                do {
                    j11 = atomicLongFieldUpdater.get(c3598b);
                } while (!atomicLongFieldUpdater.compareAndSet(c3598b, j11, j11 & DurationKt.MAX_MILLIS));
            }
        }
        m141h();
    }

    /* JADX INFO: renamed from: m */
    public final void m5757m(int i10, Object obj) {
        this.f10697g.lazySet(i10 * 2, obj);
    }

    /* JADX INFO: renamed from: n */
    public final void m5758n(int i10, Object obj) {
        this.f10697g.set((i10 * 2) + 1, obj);
    }
}
