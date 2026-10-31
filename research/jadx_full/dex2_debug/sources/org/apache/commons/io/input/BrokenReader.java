package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.util.function.Supplier;
import org.apache.commons.io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BrokenReader extends Reader {
    public static final BrokenReader INSTANCE = new BrokenReader();
    private final Supplier<Throwable> exceptionSupplier;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BrokenReader() {
        this((Supplier<Throwable>) new androidx.emoji2.text.flatbuffer.a(5));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable b(IOException iOException) {
        return lambda$new$1(iOException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable c() {
        return lambda$new$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Throwable lambda$new$0() {
        return new IOException("Broken reader");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RuntimeException rethrow() {
        return Erase.rethrow(this.exceptionSupplier.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable y(Throwable th) {
        return lambda$new$2(th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void mark(int i) {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public boolean ready() {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void reset() {
        throw rethrow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public long skip(long j) {
        throw rethrow();
    }

    @Deprecated
    public BrokenReader(IOException iOException) {
        this(new c(iOException, 1));
    }

    public BrokenReader(Supplier<Throwable> supplier) {
        this.exceptionSupplier = supplier;
    }

    public BrokenReader(Throwable th) {
        this(new b(1, th));
    }

    private static /* synthetic */ Throwable lambda$new$1(IOException iOException) {
        return iOException;
    }

    private static /* synthetic */ Throwable lambda$new$2(Throwable th) {
        return th;
    }
}
