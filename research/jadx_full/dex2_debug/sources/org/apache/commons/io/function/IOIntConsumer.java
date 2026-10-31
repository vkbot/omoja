package org.apache.commons.io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@FunctionalInterface
public interface IOIntConsumer {
    public static final IOIntConsumer NOOP = new r();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void a(IOIntConsumer iOIntConsumer, int i) {
        iOIntConsumer.lambda$asIntConsumer$3(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void b(IOIntConsumer iOIntConsumer, IOIntConsumer iOIntConsumer2, int i) {
        iOIntConsumer.lambda$andThen$1(iOIntConsumer2, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void c(IOIntConsumer iOIntConsumer, Integer num) {
        iOIntConsumer.lambda$asConsumer$2(num);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void d(int i) {
        lambda$static$0(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default void lambda$andThen$1(IOIntConsumer iOIntConsumer, int i) {
        accept(i);
        iOIntConsumer.accept(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default void lambda$asConsumer$2(Integer num) {
        Uncheck.accept(this, num.intValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ default void lambda$asIntConsumer$3(int i) {
        Uncheck.accept(this, i);
    }

    void accept(int i);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IOIntConsumer andThen(IOIntConsumer iOIntConsumer) {
        Objects.requireNonNull(iOIntConsumer);
        return new q(this, iOIntConsumer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default Consumer<Integer> asConsumer() {
        return new a0(5, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default IntConsumer asIntConsumer() {
        return new s(this);
    }

    private static /* synthetic */ void lambda$static$0(int i) {
    }
}
