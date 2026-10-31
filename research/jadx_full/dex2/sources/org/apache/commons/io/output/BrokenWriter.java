package org.apache.commons.io.output;

import java.io.IOException;
import java.io.Writer;
import java.util.function.Supplier;
import org.apache.commons.io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BrokenWriter extends Writer {
    public static final BrokenWriter INSTANCE = new BrokenWriter();
    private final Supplier<Throwable> exceptionSupplier;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BrokenWriter() {
        this((Supplier<Throwable>) new androidx.emoji2.text.flatbuffer.a(7));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable b(IOException iOException) {
        return lambda$new$1(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable c(Throwable th) {
        return lambda$new$2(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Throwable lambda$new$0() {
        return new IOException("Broken writer");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RuntimeException rethrow() {
        return Erase.rethrow(this.exceptionSupplier.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable y() {
        return lambda$new$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        throw rethrow();
    }

    @Deprecated
    public BrokenWriter(IOException iOException) {
        this(new org.apache.commons.io.input.c(iOException, 2));
    }

    public BrokenWriter(Supplier<Throwable> supplier) {
        this.exceptionSupplier = supplier;
    }

    public BrokenWriter(Throwable th) {
        this(new org.apache.commons.io.input.b(2, th));
    }

    private static /* synthetic */ Throwable lambda$new$1(IOException iOException) {
        return iOException;
    }

    private static /* synthetic */ Throwable lambda$new$2(Throwable th) {
        return th;
    }
}
