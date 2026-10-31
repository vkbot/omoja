package org.apache.commons.p161io.function;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.function.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2831l implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8002a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f8003b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8004c;

    public /* synthetic */ C2831l(IOFunction iOFunction, IOConsumer iOConsumer) {
        this.f8002a = 1;
        this.f8004c = iOFunction;
        this.f8003b = iOConsumer;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) {
        switch (this.f8002a) {
            case 0:
                ((IOConsumer) this.f8003b).lambda$andThen$1((IOConsumer) this.f8004c, obj);
                break;
            case 1:
                ((IOFunction) this.f8004c).lambda$andThen$2((IOConsumer) this.f8003b, obj);
                break;
            default:
                ((IOFunction) this.f8003b).lambda$andThen$0((Consumer) this.f8004c, obj);
                break;
        }
    }

    public /* synthetic */ C2831l(int i10, Object obj, Object obj2) {
        this.f8002a = i10;
        this.f8003b = obj;
        this.f8004c = obj2;
    }
}
