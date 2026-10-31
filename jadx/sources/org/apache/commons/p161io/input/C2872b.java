package org.apache.commons.p161io.input;

import java.util.function.Supplier;
import org.apache.commons.p161io.output.BrokenWriter;

/* JADX INFO: renamed from: org.apache.commons.io.input.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2872b implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8041a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Throwable f8042b;

    public /* synthetic */ C2872b(int i10, Throwable th) {
        this.f8041a = i10;
        this.f8042b = th;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f8041a) {
            case 0:
                return BrokenInputStream.lambda$new$2(this.f8042b);
            case 1:
                return BrokenReader.lambda$new$2(this.f8042b);
            default:
                return BrokenWriter.lambda$new$2(this.f8042b);
        }
    }
}
