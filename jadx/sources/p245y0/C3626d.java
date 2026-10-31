package p245y0;

import p047e0.C1345d2;

/* JADX INFO: renamed from: y0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3626d implements AutoCloseable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10770b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f10771c;

    public /* synthetic */ C3626d(int i10, Object obj) {
        this.f10770b = i10;
        this.f10771c = obj;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        switch (this.f10770b) {
            case 0:
                AbstractC3629g.f10774a.remove((C3628f) this.f10771c);
                break;
            default:
                AbstractC3629g.f10775b.remove((C1345d2) this.f10771c);
                break;
        }
    }
}
