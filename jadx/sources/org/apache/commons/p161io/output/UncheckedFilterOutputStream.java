package org.apache.commons.p161io.output;

import androidx.fragment.app.C0566h;
import java.io.FilterOutputStream;
import java.io.IOException;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.Uncheck;
import org.apache.commons.p161io.input.C2880j;
import org.apache.commons.p161io.input.C2883m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UncheckedFilterOutputStream extends FilterOutputStream {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterOutputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public UncheckedFilterOutputStream get() {
            return new UncheckedFilterOutputStream(this);
        }
    }

    private UncheckedFilterOutputStream(Builder builder) {
        super(builder.getOutputStream());
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flush$1() throws IOException {
        super.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$2(byte[] bArr) throws IOException {
        super.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$3(byte[] bArr, int i10, int i11) throws IOException {
        super.write(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$4(int i10) throws IOException {
        super.write(i10);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new C2912d(this, 1));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        Uncheck.run(new C2912d(this, 0));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        Uncheck.accept(new C0566h(28, this), bArr, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        Uncheck.accept(new C2880j(8, this), bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i10) {
        Uncheck.accept(new C2883m(this, 2), i10);
    }
}
