package p097j;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import p025c0.AbstractC0938g;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: j.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1884b extends WeakReference {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1643e f4863a;

    /* JADX INFO: renamed from: b */
    public final boolean f4864b;

    /* JADX INFO: renamed from: c */
    public InterfaceC1889d0 f4865c;

    public C1884b(InterfaceC1643e interfaceC1643e, C1912x c1912x, ReferenceQueue referenceQueue) {
        super(c1912x, referenceQueue);
        AbstractC0938g.m1072c(interfaceC1643e, "Argument must not be null");
        this.f4863a = interfaceC1643e;
        boolean z9 = c1912x.f5031b;
        this.f4865c = null;
        this.f4864b = z9;
    }
}
