package org.apache.commons.p161io.function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
public interface IORunnable {
    /* JADX INFO: Access modifiers changed from: private */
    /* synthetic */ default void lambda$asRunnable$0() {
        Uncheck.run(this);
    }

    static IORunnable noop() {
        return Constants.IO_RUNNABLE;
    }

    default Runnable asRunnable() {
        return new RunnableC2819d(this, 1);
    }

    void run();
}
