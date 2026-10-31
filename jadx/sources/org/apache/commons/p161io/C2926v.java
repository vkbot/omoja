package org.apache.commons.p161io;

import java.util.function.Supplier;

/* JADX INFO: renamed from: org.apache.commons.io.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2926v implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8118a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f8119b;

    public /* synthetic */ C2926v(int i10, Object obj) {
        this.f8118a = i10;
        this.f8119b = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f8118a) {
            case 0:
                return ((IOUtils.ScratchBytes) this.f8119b).array();
            default:
                return IOCase.lambda$forName$1((String) this.f8119b);
        }
    }
}
