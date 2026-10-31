package org.apache.commons.p161io.function;

/* JADX INFO: renamed from: org.apache.commons.io.function.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2822e0 implements IOSupplier, IOBooleanSupplier {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOIterator f7987b;

    public /* synthetic */ C2822e0(IOIterator iOIterator) {
        this.f7987b = iOIterator;
    }

    @Override // org.apache.commons.p161io.function.IOSupplier
    public Object get() {
        return this.f7987b.next();
    }

    @Override // org.apache.commons.p161io.function.IOBooleanSupplier
    public boolean getAsBoolean() {
        return this.f7987b.hasNext();
    }
}
