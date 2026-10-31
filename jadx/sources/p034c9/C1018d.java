package p034c9;

import p010a9.AbstractC0035a;
import p224v8.AbstractC3422t;

/* JADX INFO: renamed from: c9.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1018d extends AbstractC1021g {

    /* JADX INFO: renamed from: c */
    public static final C1018d f1043c;

    static {
        int i10 = AbstractC1025k.f1052c;
        int i11 = AbstractC1025k.f1053d;
        long j10 = AbstractC1025k.f1054e;
        String str = AbstractC1025k.f1050a;
        C1018d c1018d = new C1018d();
        c1018d.f1045b = new ExecutorC1016b(i10, i11, j10, str);
        f1043c = c1018d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // p224v8.AbstractC3422t
    public final AbstractC3422t limitedParallelism(int i10) {
        AbstractC0035a.m94a(i10);
        return i10 >= AbstractC1025k.f1052c ? this : super.limitedParallelism(i10);
    }

    @Override // p224v8.AbstractC3422t
    public final String toString() {
        return "Dispatchers.Default";
    }
}
