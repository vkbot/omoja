package org.apache.commons.p161io;

import java.util.function.Supplier;

/* JADX INFO: renamed from: org.apache.commons.io.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2928x extends ThreadLocal {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8121a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Supplier f8122b;

    public /* synthetic */ C2928x(Supplier supplier, int i10) {
        this.f8121a = i10;
        this.f8122b = supplier;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f8121a) {
            case 0:
                ((C2927w) this.f8122b).getClass();
                return IOUtils.ScratchBytes.lambda$static$0();
            default:
                ((C2927w) this.f8122b).getClass();
                return IOUtils.ScratchChars.lambda$static$0();
        }
    }
}
