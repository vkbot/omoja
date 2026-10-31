package org.apache.commons.p161io.function;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.function.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2826g0 implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7993a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f7994b;

    public /* synthetic */ C2826g0(int i10, Object obj) {
        this.f7993a = i10;
        this.f7994b = obj;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) {
        switch (this.f7993a) {
            case 0:
                ((Consumer) this.f7994b).accept(obj);
                break;
            default:
                ((IOSpliterator) this.f7994b).forEachRemaining((IOConsumer) obj);
                break;
        }
    }
}
