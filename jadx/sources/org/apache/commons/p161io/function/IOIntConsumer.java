package org.apache.commons.p161io.function;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IOIntConsumer {
    public static final IOIntConsumer NOOP = new C2837r();

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$andThen$1(IOIntConsumer iOIntConsumer, int i10) {
        accept(i10);
        iOIntConsumer.accept(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$asConsumer$2(Integer num) {
        Uncheck.accept(this, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$asIntConsumer$3(int i10) {
        Uncheck.accept(this, i10);
    }

    void accept(int i10);

    default IOIntConsumer andThen(final IOIntConsumer iOIntConsumer) {
        Objects.requireNonNull(iOIntConsumer);
        return new IOIntConsumer() { // from class: org.apache.commons.io.function.q
            @Override // org.apache.commons.p161io.function.IOIntConsumer
            public final void accept(int i10) {
                this.f8013a.lambda$andThen$1(iOIntConsumer, i10);
            }
        };
    }

    default Consumer<Integer> asConsumer() {
        return new C2814a0(5, this);
    }

    default IntConsumer asIntConsumer() {
        return new IntConsumer() { // from class: org.apache.commons.io.function.s
            @Override // java.util.function.IntConsumer
            public final void accept(int i10) {
                this.f8015a.lambda$asIntConsumer$3(i10);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ void lambda$static$0(int i10) {
    }
}
