package org.apache.commons.io.function;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class l implements IOConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(IOFunction iOFunction, IOConsumer iOConsumer) {
        this.a = 1;
        this.c = iOFunction;
        this.b = iOConsumer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) {
        switch (this.a) {
            case 0:
                IOConsumer.c((IOConsumer) this.b, (IOConsumer) this.c, obj);
                break;
            case 1:
                IOFunction.m((IOFunction) this.c, (IOConsumer) this.b, obj);
                break;
            default:
                IOFunction.d((IOFunction) this.b, (Consumer) this.c, obj);
                break;
        }
    }

    public /* synthetic */ l(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
