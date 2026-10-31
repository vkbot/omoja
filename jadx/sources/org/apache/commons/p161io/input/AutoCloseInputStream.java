package org.apache.commons.p161io.input;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOIntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class AutoCloseInputStream extends ProxyInputStream {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends ProxyInputStream.AbstractBuilder<AutoCloseInputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public AutoCloseInputStream get() {
            return new AutoCloseInputStream(this);
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ IOIntConsumer getAfterRead() {
            return super.getAfterRead();
        }

        @Override // org.apache.commons.io.input.ProxyInputStream.AbstractBuilder
        public /* bridge */ /* synthetic */ AbstractStreamBuilder setAfterRead(IOIntConsumer iOIntConsumer) {
            return super.setAfterRead(iOIntConsumer);
        }
    }

    @Deprecated
    public AutoCloseInputStream(InputStream inputStream) {
        super(ClosedInputStream.ifNull(inputStream));
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream
    public void afterRead(int i10) {
        if (i10 == -1) {
            close();
        }
        super.afterRead(i10);
    }

    @Override // org.apache.commons.p161io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        ((FilterInputStream) this).in = ClosedInputStream.INSTANCE;
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }

    private AutoCloseInputStream(Builder builder) {
        super(builder);
    }
}
