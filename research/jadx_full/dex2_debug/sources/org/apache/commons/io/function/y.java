package org.apache.commons.io.function;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class y implements Consumer {
    public final /* synthetic */ IOConsumer b;
    public final /* synthetic */ AtomicReference c;
    public final /* synthetic */ BiFunction d;
    public final /* synthetic */ AtomicInteger e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ y(IOConsumer iOConsumer, AtomicReference atomicReference, BiFunction biFunction, AtomicInteger atomicInteger) {
        this.b = iOConsumer;
        this.c = atomicReference;
        this.d = biFunction;
        this.e = atomicInteger;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        IOStream.v(this.b, this.c, this.d, this.e, obj);
    }
}
