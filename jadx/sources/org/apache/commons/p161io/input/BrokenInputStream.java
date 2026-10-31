package org.apache.commons.p161io.input;

import androidx.emoji2.text.flatbuffer.C0489a;
import java.io.IOException;
import java.io.InputStream;
import java.util.function.Supplier;
import org.apache.commons.p161io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BrokenInputStream extends InputStream {
    public static final BrokenInputStream INSTANCE = new BrokenInputStream();
    private final Supplier<Throwable> exceptionSupplier;

    public BrokenInputStream() {
        this(new C0489a(4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$0() {
        return new IOException("Broken input stream");
    }

    private RuntimeException rethrow() {
        return Erase.rethrow(getThrowable());
    }

    @Override // java.io.InputStream
    public int available() {
        throw rethrow();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow();
    }

    public Throwable getThrowable() {
        return this.exceptionSupplier.get();
    }

    @Override // java.io.InputStream
    public int read() {
        throw rethrow();
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        throw rethrow();
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        throw rethrow();
    }

    @Deprecated
    public BrokenInputStream(IOException iOException) {
        this(new C2873c(iOException, 0));
    }

    public BrokenInputStream(Supplier<Throwable> supplier) {
        this.exceptionSupplier = supplier;
    }

    public BrokenInputStream(Throwable th) {
        this(new C2872b(0, th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$1(IOException iOException) {
        return iOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$2(Throwable th) {
        return th;
    }
}
