package org.apache.commons.io.function;

import java.util.function.IntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class s implements IntConsumer {
    public final /* synthetic */ IOIntConsumer a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(IOIntConsumer iOIntConsumer) {
        this.a = iOIntConsumer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        IOIntConsumer.a(this.a, i);
    }
}
