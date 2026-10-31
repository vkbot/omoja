package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2824f0 implements IOFunction, IOSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOSpliterator f7990b;

    public /* synthetic */ C2824f0(IOSpliterator iOSpliterator) {
        this.f7990b = iOSpliterator;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public Object apply(Object obj) {
        return Boolean.valueOf(this.f7990b.tryAdvance((IOConsumer) obj));
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        return this.f7990b.trySplit();
    }
}
