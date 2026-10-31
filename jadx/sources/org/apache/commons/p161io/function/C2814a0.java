package org.apache.commons.p161io.function;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.function.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2814a0 implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7977b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f7978c;

    public /* synthetic */ C2814a0(int i10, Object obj) {
        this.f7977b = i10;
        this.f7978c = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7977b) {
            case 0:
                Erase.accept((IOConsumer) this.f7978c, obj);
                break;
            case 1:
                ((IOConsumer) this.f7978c).lambda$asConsumer$2(obj);
                break;
            case 2:
                Erase.accept((IOConsumer) this.f7978c, obj);
                break;
            case 3:
                Erase.accept((IOConsumer) this.f7978c, obj);
                break;
            case 4:
                Erase.accept((IOConsumer) this.f7978c, obj);
                break;
            default:
                ((IOIntConsumer) this.f7978c).lambda$asConsumer$2((Integer) obj);
                break;
        }
    }
}
