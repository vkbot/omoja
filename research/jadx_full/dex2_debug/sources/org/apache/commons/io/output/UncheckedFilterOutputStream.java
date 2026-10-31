package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import org.apache.commons.io.function.Uncheck;
import org.apache.commons.io.input.j;
import org.apache.commons.io.input.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UncheckedFilterOutputStream extends FilterOutputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedFilterOutputStream(UncheckedFilterOutputStream$Builder uncheckedFilterOutputStream$Builder) {
        super(uncheckedFilterOutputStream$Builder.getOutputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void S(UncheckedFilterOutputStream uncheckedFilterOutputStream, int i) {
        uncheckedFilterOutputStream.lambda$write$4(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void V(UncheckedFilterOutputStream uncheckedFilterOutputStream) {
        uncheckedFilterOutputStream.lambda$flush$1();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(UncheckedFilterOutputStream uncheckedFilterOutputStream) {
        uncheckedFilterOutputStream.lambda$close$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedFilterOutputStream$Builder builder() {
        return new UncheckedFilterOutputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(UncheckedFilterOutputStream uncheckedFilterOutputStream, byte[] bArr) {
        uncheckedFilterOutputStream.lambda$write$2(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$close$0() throws IOException {
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$flush$1() throws IOException {
        super.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$2(byte[] bArr) throws IOException {
        super.write(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$3(byte[] bArr, int i, int i2) throws IOException {
        super.write(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$4(int i) throws IOException {
        super.write(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(UncheckedFilterOutputStream uncheckedFilterOutputStream, byte[] bArr, int i, int i2) throws IOException {
        uncheckedFilterOutputStream.lambda$write$3(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new d(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        Uncheck.run(new d(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        Uncheck.accept(new androidx.fragment.app.h(28, this), bArr, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public /* synthetic */ UncheckedFilterOutputStream(UncheckedFilterOutputStream$Builder uncheckedFilterOutputStream$Builder, UncheckedFilterOutputStream$1 uncheckedFilterOutputStream$1) {
        this(uncheckedFilterOutputStream$Builder);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        Uncheck.accept(new j(8, this), bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        Uncheck.accept(new m(this, 2), i);
    }
}
