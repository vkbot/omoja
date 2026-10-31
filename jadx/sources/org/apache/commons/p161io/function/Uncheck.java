package org.apache.commons.p161io.function;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class Uncheck {
    private Uncheck() {
    }

    public static <T, U> void accept(IOBiConsumer<T, U> iOBiConsumer, T t, U u8) {
        try {
            iOBiConsumer.accept(t, u8);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T, U, R> R apply(IOBiFunction<T, U, R> iOBiFunction, T t, U u8) {
        try {
            return iOBiFunction.apply(t, u8);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T> int compare(IOComparator<T> iOComparator, T t, T t3) {
        try {
            return iOComparator.compare(t, t3);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T> T get(IOSupplier<T> iOSupplier) {
        try {
            return iOSupplier.get();
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static boolean getAsBoolean(IOBooleanSupplier iOBooleanSupplier) {
        try {
            return iOBooleanSupplier.getAsBoolean();
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static int getAsInt(IOIntSupplier iOIntSupplier) {
        try {
            return iOIntSupplier.getAsInt();
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static long getAsLong(IOLongSupplier iOLongSupplier) {
        try {
            return iOLongSupplier.getAsLong();
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static void run(IORunnable iORunnable) {
        try {
            iORunnable.run();
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T> boolean test(IOPredicate<T> iOPredicate, T t) {
        try {
            return iOPredicate.test(t);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    private static UncheckedIOException wrap(IOException iOException, Supplier<String> supplier) {
        return new UncheckedIOException(supplier.get(), iOException);
    }

    public static <T> void accept(IOConsumer<T> iOConsumer, T t) {
        try {
            iOConsumer.accept(t);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static void run(IORunnable iORunnable, Supplier<String> supplier) {
        try {
            iORunnable.run();
        } catch (IOException e) {
            throw wrap(e, supplier);
        }
    }

    public static <T, R> R apply(IOFunction<T, R> iOFunction, T t) {
        try {
            return iOFunction.apply(t);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T> T get(IOSupplier<T> iOSupplier, Supplier<String> supplier) {
        try {
            return iOSupplier.get();
        } catch (IOException e) {
            throw wrap(e, supplier);
        }
    }

    public static int getAsInt(IOIntSupplier iOIntSupplier, Supplier<String> supplier) {
        try {
            return iOIntSupplier.getAsInt();
        } catch (IOException e) {
            throw wrap(e, supplier);
        }
    }

    public static long getAsLong(IOLongSupplier iOLongSupplier, Supplier<String> supplier) {
        try {
            return iOLongSupplier.getAsLong();
        } catch (IOException e) {
            throw wrap(e, supplier);
        }
    }

    public static void accept(IOIntConsumer iOIntConsumer, int i10) {
        try {
            iOIntConsumer.accept(i10);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    private static UncheckedIOException wrap(IOException iOException) {
        return new UncheckedIOException(iOException);
    }

    public static <T, U, V, W, R> R apply(IOQuadFunction<T, U, V, W, R> iOQuadFunction, T t, U u8, V v9, W w) {
        try {
            return iOQuadFunction.apply(t, u8, v9, w);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T, U, V> void accept(IOTriConsumer<T, U, V> iOTriConsumer, T t, U u8, V v9) {
        try {
            iOTriConsumer.accept(t, u8, v9);
        } catch (IOException e) {
            throw wrap(e);
        }
    }

    public static <T, U, V, R> R apply(IOTriFunction<T, U, V, R> iOTriFunction, T t, U u8, V v9) {
        try {
            return iOTriFunction.apply(t, u8, v9);
        } catch (IOException e) {
            throw wrap(e);
        }
    }
}
