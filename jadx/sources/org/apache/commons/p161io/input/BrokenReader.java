package org.apache.commons.p161io.input;

import androidx.emoji2.text.flatbuffer.C0489a;
import java.io.IOException;
import java.io.Reader;
import java.util.function.Supplier;
import org.apache.commons.p161io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BrokenReader extends Reader {
    public static final BrokenReader INSTANCE = new BrokenReader();
    private final Supplier<Throwable> exceptionSupplier;

    public BrokenReader() {
        this(new C0489a(5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$0() {
        return new IOException("Broken reader");
    }

    private RuntimeException rethrow() {
        return Erase.rethrow(this.exceptionSupplier.get());
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow();
    }

    @Override // java.io.Reader
    public void mark(int i10) {
        throw rethrow();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) {
        throw rethrow();
    }

    @Override // java.io.Reader
    public boolean ready() {
        throw rethrow();
    }

    @Override // java.io.Reader
    public void reset() {
        throw rethrow();
    }

    @Override // java.io.Reader
    public long skip(long j10) {
        throw rethrow();
    }

    @Deprecated
    public BrokenReader(IOException iOException) {
        this(new C2873c(iOException, 1));
    }

    public BrokenReader(Supplier<Throwable> supplier) {
        this.exceptionSupplier = supplier;
    }

    public BrokenReader(Throwable th) {
        this(new C2872b(1, th));
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
