package org.apache.commons.io.function;

import java.util.function.BiConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class e implements BiConsumer {
    public final /* synthetic */ int a;
    public final /* synthetic */ IOBiConsumer b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(IOBiConsumer iOBiConsumer, int i) {
        this.a = i;
        this.b = iOBiConsumer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                IOBiConsumer.f(this.b, obj, obj2);
                break;
            case 1:
                IOStream.i(this.b, obj, obj2);
                break;
            default:
                IOStream.x(this.b, obj, obj2);
                break;
        }
    }
}
