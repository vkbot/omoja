package org.apache.commons.p161io.function;

import java.util.function.BiConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.function.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2821e implements BiConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7985a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ IOBiConsumer f7986b;

    public /* synthetic */ C2821e(IOBiConsumer iOBiConsumer, int i10) {
        this.f7985a = i10;
        this.f7986b = iOBiConsumer;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f7985a) {
            case 0:
                this.f7986b.lambda$asBiConsumer$1(obj, obj2);
                break;
            case 1:
                Erase.accept(this.f7986b, obj, obj2);
                break;
            default:
                Erase.accept(this.f7986b, obj, obj2);
                break;
        }
    }
}
