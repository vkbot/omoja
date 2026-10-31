package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2820d0 implements IORunnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7983a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f7984b;

    public /* synthetic */ C2820d0(int i10, Object obj) {
        this.f7983a = i10;
        this.f7984b = obj;
    }

    @Override // org.apache.commons.p161io.function.IORunnable
    public final void run() {
        switch (this.f7983a) {
            case 0:
                ((Runnable) this.f7984b).run();
                break;
            default:
                ((IOIterator) this.f7984b).remove();
                break;
        }
    }
}
