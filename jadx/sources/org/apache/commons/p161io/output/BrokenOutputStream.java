package org.apache.commons.p161io.output;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0077d;
import java.io.IOException;
import java.io.OutputStream;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.p161io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class BrokenOutputStream extends OutputStream {
    public static final BrokenOutputStream INSTANCE = new BrokenOutputStream();
    private final Function<String, Throwable> exceptionFunction;

    @Deprecated
    public BrokenOutputStream(Supplier<Throwable> supplier) {
        this.exceptionFunction = new C2909a(0, supplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$0(String str) {
        return new IOException(AbstractC0074a.m161l("Broken output stream: ", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$2(Supplier supplier, String str) {
        return (Throwable) supplier.get();
    }

    private RuntimeException rethrow(String str) {
        return Erase.rethrow(this.exceptionFunction.apply(str));
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow("close()");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        throw rethrow("flush()");
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        throw rethrow("write(int)");
    }

    public BrokenOutputStream(Function<String, Throwable> function) {
        this.exceptionFunction = function;
    }

    @Deprecated
    public BrokenOutputStream(IOException iOException) {
        this(new C2909a(1, iOException));
    }

    public BrokenOutputStream() {
        this(new C0077d(5));
    }

    public BrokenOutputStream(Throwable th) {
        this(new C2909a(2, th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$1(IOException iOException, String str) {
        return iOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Throwable lambda$new$3(Throwable th, String str) {
        return th;
    }
}
