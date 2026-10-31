package org.apache.commons.p161io;

import java.util.function.Supplier;

/* JADX INFO: renamed from: org.apache.commons.io.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2927w implements Supplier {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8120a;

    public /* synthetic */ C2927w(int i10) {
        this.f8120a = i10;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f8120a) {
            case 0:
                return IOUtils.ScratchBytes.lambda$static$0();
            default:
                return IOUtils.ScratchChars.lambda$static$0();
        }
    }
}
