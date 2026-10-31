package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.io.function.Erase;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class BrokenOutputStream extends OutputStream {
    public static final BrokenOutputStream INSTANCE = new BrokenOutputStream();
    private final Function<String, Throwable> exceptionFunction;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public BrokenOutputStream(Supplier<Throwable> supplier) {
        this.exceptionFunction = new a(0, supplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable S(Supplier supplier, String str) {
        return lambda$new$2(supplier, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable b(IOException iOException, String str) {
        return lambda$new$1(iOException, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable c(String str) {
        return lambda$new$0(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Throwable lambda$new$0(String str) {
        return new IOException(ai.onnxruntime.a.l("Broken output stream: ", str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Throwable lambda$new$2(Supplier supplier, String str) {
        return (Throwable) supplier.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private RuntimeException rethrow(String str) {
        return Erase.rethrow(this.exceptionFunction.apply(str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Throwable y(String str, Throwable th) {
        return lambda$new$3(th, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw rethrow("close()");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        throw rethrow("flush()");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public void write(int i) {
        throw rethrow("write(int)");
    }

    public BrokenOutputStream(Function<String, Throwable> function) {
        this.exceptionFunction = function;
    }

    @Deprecated
    public BrokenOutputStream(IOException iOException) {
        this(new a(1, iOException));
    }

    public BrokenOutputStream() {
        this((Function<String, Throwable>) new ai.onnxruntime.d(5));
    }

    public BrokenOutputStream(Throwable th) {
        this(new a(2, th));
    }

    private static /* synthetic */ Throwable lambda$new$1(IOException iOException, String str) {
        return iOException;
    }

    private static /* synthetic */ Throwable lambda$new$3(Throwable th, String str) {
        return th;
    }
}
