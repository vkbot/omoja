package org.apache.commons.io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class f0 implements IOFunction, IOSupplier {
    public final /* synthetic */ IOSpliterator b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f0(IOSpliterator iOSpliterator) {
        this.b = iOSpliterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOFunction
    public Object apply(Object obj) {
        return Boolean.valueOf(this.b.tryAdvance((IOConsumer) obj));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public Object get() {
        return this.b.trySplit();
    }
}
