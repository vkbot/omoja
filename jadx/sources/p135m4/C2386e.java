package p135m4;

import com.bumptech.glide.AbstractC1030c;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: renamed from: m4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2386e extends AbstractC1030c {

    /* JADX INFO: renamed from: b */
    public final AtomicReferenceFieldUpdater f6456b;

    /* JADX INFO: renamed from: c */
    public final AtomicReferenceFieldUpdater f6457c;

    /* JADX INFO: renamed from: d */
    public final AtomicReferenceFieldUpdater f6458d;

    /* JADX INFO: renamed from: e */
    public final AtomicReferenceFieldUpdater f6459e;

    /* JADX INFO: renamed from: f */
    public final AtomicReferenceFieldUpdater f6460f;

    public C2386e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f6456b = atomicReferenceFieldUpdater;
        this.f6457c = atomicReferenceFieldUpdater2;
        this.f6458d = atomicReferenceFieldUpdater3;
        this.f6459e = atomicReferenceFieldUpdater4;
        this.f6460f = atomicReferenceFieldUpdater5;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: c */
    public final boolean mo1264c(AbstractC2394m abstractC2394m, C2385d c2385d, C2385d c2385d2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f6459e;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2394m, c2385d, c2385d2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2394m) == c2385d);
        return false;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: d */
    public final boolean mo1265d(AbstractC2394m abstractC2394m, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f6460f;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2394m, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2394m) == obj);
        return false;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: e */
    public final boolean mo1266e(AbstractC2394m abstractC2394m, C2393l c2393l, C2393l c2393l2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f6458d;
            if (atomicReferenceFieldUpdater.compareAndSet(abstractC2394m, c2393l, c2393l2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(abstractC2394m) == c2393l);
        return false;
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: k */
    public final C2385d mo1267k(AbstractC2394m abstractC2394m) {
        return (C2385d) this.f6459e.getAndSet(abstractC2394m, C2385d.f6452d);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: l */
    public final C2393l mo1268l(AbstractC2394m abstractC2394m) {
        return (C2393l) this.f6458d.getAndSet(abstractC2394m, C2393l.f6467c);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: q */
    public final void mo1269q(C2393l c2393l, C2393l c2393l2) {
        this.f6457c.lazySet(c2393l, c2393l2);
    }

    @Override // com.bumptech.glide.AbstractC1030c
    /* JADX INFO: renamed from: r */
    public final void mo1270r(C2393l c2393l, Thread thread) {
        this.f6456b.lazySet(c2393l, thread);
    }
}
