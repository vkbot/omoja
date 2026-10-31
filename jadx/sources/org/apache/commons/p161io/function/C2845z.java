package org.apache.commons.p161io.function;

import java.util.function.Supplier;

/* JADX INFO: renamed from: org.apache.commons.io.function.z */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2845z implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8029a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOSupplier f8030b;

    public /* synthetic */ C2845z(IOSupplier iOSupplier, int i10) {
        this.f8029a = i10;
        this.f8030b = iOSupplier;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f8029a) {
            case 0:
                return Erase.get(this.f8030b);
            default:
                return this.f8030b.getUnchecked();
        }
    }
}
