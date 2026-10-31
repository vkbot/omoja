package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class q implements IOIntConsumer {
    public final /* synthetic */ IOIntConsumer a;
    public final /* synthetic */ IOIntConsumer b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(IOIntConsumer iOIntConsumer, IOIntConsumer iOIntConsumer2) {
        this.a = iOIntConsumer;
        this.b = iOIntConsumer2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOIntConsumer
    public final void accept(int i) {
        IOIntConsumer.b(this.a, this.b, i);
    }
}
