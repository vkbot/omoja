package org.apache.commons.p161io.input;

import androidx.fragment.app.C0566h;
import java.io.FilterInputStream;
import java.io.IOException;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UncheckedFilterInputStream extends FilterInputStream {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterInputStream, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ UncheckedFilterInputStream lambda$get$0() {
            return new UncheckedFilterInputStream(this);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public UncheckedFilterInputStream get() {
            return (UncheckedFilterInputStream) Uncheck.get(new C0566h(26, this));
        }
    }

    private UncheckedFilterInputStream(Builder builder) {
        super(builder.getInputStream());
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$available$0() {
        return super.available();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$1() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$read$2() {
        return super.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$3(byte[] bArr) {
        return Integer.valueOf(super.read(bArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$4(byte[] bArr, int i10, int i11) {
        return Integer.valueOf(super.read(bArr, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reset$5() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$skip$6(long j10) {
        return Long.valueOf(super.skip(j10));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return Uncheck.getAsInt(new C2885o(this, 2));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new C2886p(this, 1));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        return ((Integer) Uncheck.apply(new C2885o(this, 1), bArr, Integer.valueOf(i10), Integer.valueOf(i11))).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        Uncheck.run(new C2886p(this, 0));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        return ((Long) Uncheck.apply(new C2885o(this, 3), Long.valueOf(j10))).longValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return ((Integer) Uncheck.apply(new C2885o(this, 4), bArr)).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        return Uncheck.getAsInt(new C2885o(this, 0));
    }
}
