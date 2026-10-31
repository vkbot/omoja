package p046d9;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import p010a9.AbstractC0059u;

/* JADX INFO: renamed from: d9.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1326l extends AbstractC0059u {

    /* JADX INFO: renamed from: f */
    public final AtomicReferenceArray f3161f;

    public C1326l(long j10, C1326l c1326l, int i10) {
        super(j10, c1326l, i10);
        this.f3161f = new AtomicReferenceArray(AbstractC1325k.f3160f);
    }

    @Override // p010a9.AbstractC0059u
    /* JADX INFO: renamed from: f */
    public final int mo139f() {
        return AbstractC1325k.f3160f;
    }

    @Override // p010a9.AbstractC0059u
    /* JADX INFO: renamed from: g */
    public final void mo140g(int i10, CoroutineContext coroutineContext) {
        this.f3161f.set(i10, AbstractC1325k.f3159e);
        m141h();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f149d + ", hashCode=" + hashCode() + ']';
    }
}
