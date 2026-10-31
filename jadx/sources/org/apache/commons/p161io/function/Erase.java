package org.apache.commons.p161io.function;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class Erase {
    private Erase() {
    }

    public static <T, U> void accept(IOBiConsumer<T, U> iOBiConsumer, T t, U u8) {
        try {
            iOBiConsumer.accept(t, u8);
        } catch (IOException e) {
            rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T, U, R> R apply(IOBiFunction<? super T, ? super U, ? extends R> iOBiFunction, T t, U u8) {
        try {
            return iOBiFunction.apply(t, u8);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> int compare(IOComparator<? super T> iOComparator, T t, T t3) {
        try {
            return iOComparator.compare(t, t3);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    public static <T> T get(IOSupplier<T> iOSupplier) {
        try {
            return iOSupplier.get();
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    public static void run(IORunnable iORunnable) {
        try {
            iORunnable.run();
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> boolean test(IOPredicate<? super T> iOPredicate, T t) {
        try {
            return iOPredicate.test(t);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    public static <T> void accept(IOConsumer<T> iOConsumer, T t) {
        try {
            iOConsumer.accept(t);
        } catch (IOException e) {
            rethrow(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T, R> R apply(IOFunction<? super T, ? extends R> iOFunction, T t) {
        try {
            return iOFunction.apply(t);
        } catch (IOException e) {
            throw rethrow(e);
        }
    }

    public static <T extends Throwable> RuntimeException rethrow(Throwable th) throws Throwable {
        throw th;
    }
}
