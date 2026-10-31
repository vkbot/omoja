package org.apache.commons.p161io.output;

import androidx.emoji2.text.flatbuffer.C0489a;
import java.io.IOException;
import java.io.Writer;
import java.util.function.Supplier;
import org.apache.commons.p161io.function.Erase;
import org.apache.commons.p161io.input.C2872b;
import org.apache.commons.p161io.input.C2873c;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BrokenWriter extends Writer {
    public static final BrokenWriter INSTANCE = new BrokenWriter();
    private final Supplier<Throwable> exceptionSupplier;

    public BrokenWriter() {
        this(new C0489a(7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$0() {
        return new IOException("Broken writer");
    }

    private RuntimeException rethrow() {
        return Erase.rethrow(this.exceptionSupplier.get());
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        throw rethrow();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        throw rethrow();
    }

    @Deprecated
    public BrokenWriter(IOException iOException) {
        this(new C2873c(iOException, 2));
    }

    public BrokenWriter(Supplier<Throwable> supplier) {
        this.exceptionSupplier = supplier;
    }

    public BrokenWriter(Throwable th) {
        this(new C2872b(2, th));
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
