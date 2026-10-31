package p253y8;

import kotlin.coroutines.Continuation;
import p224v8.C3377e;
import p263z8.AbstractC3763a;
import p263z8.AbstractC3765c;

/* JADX INFO: renamed from: y8.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3682s extends AbstractC3765c {

    /* JADX INFO: renamed from: a */
    public long f10904a;

    /* JADX INFO: renamed from: b */
    public C3377e f10905b;

    @Override // p263z8.AbstractC3765c
    /* JADX INFO: renamed from: a */
    public final boolean mo5907a(AbstractC3763a abstractC3763a) {
        C3680q c3680q = (C3680q) abstractC3763a;
        if (this.f10904a >= 0) {
            return false;
        }
        long j10 = c3680q.f10897h;
        if (j10 < c3680q.f10898i) {
            c3680q.f10898i = j10;
        }
        this.f10904a = j10;
        return true;
    }

    @Override // p263z8.AbstractC3765c
    /* JADX INFO: renamed from: b */
    public final Continuation[] mo5908b(AbstractC3763a abstractC3763a) {
        long j10 = this.f10904a;
        this.f10904a = -1L;
        this.f10905b = null;
        return ((C3680q) abstractC3763a).m5903r(j10);
    }
}
