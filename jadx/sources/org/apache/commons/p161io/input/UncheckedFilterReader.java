package org.apache.commons.p161io.input;

import androidx.fragment.app.C0566h;
import java.io.FilterReader;
import java.io.IOException;
import java.nio.CharBuffer;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UncheckedFilterReader extends FilterReader {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterReader, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ UncheckedFilterReader lambda$get$0() {
            return new UncheckedFilterReader(this);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public UncheckedFilterReader get() {
            return (UncheckedFilterReader) Uncheck.get(new C0566h(27, this));
        }
    }

    private UncheckedFilterReader(Builder builder) {
        super(builder.getReader());
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$0() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$mark$1(int i10) throws IOException {
        super.mark(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$read$2() {
        return super.read();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$3(char[] cArr) {
        return Integer.valueOf(super.read(cArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$4(char[] cArr, int i10, int i11) {
        return Integer.valueOf(super.read(cArr, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$read$5(CharBuffer charBuffer) {
        return Integer.valueOf(super.read(charBuffer));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$ready$6() {
        return super.ready();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reset$7() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$skip$8(long j10) {
        return Long.valueOf(super.skip(j10));
    }

    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new C2888r(this, 0));
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void mark(int i10) {
        Uncheck.accept(new C2883m(this, 1), i10);
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i10, int i11) {
        return ((Integer) Uncheck.apply(new C2887q(this, 1), cArr, Integer.valueOf(i10), Integer.valueOf(i11))).intValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() {
        return Uncheck.getAsBoolean(new C2887q(this, 4));
    }

    @Override // java.io.FilterReader, java.io.Reader
    public void reset() {
        Uncheck.run(new C2888r(this, 1));
    }

    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j10) {
        return ((Long) Uncheck.apply(new C2887q(this, 5), Long.valueOf(j10))).longValue();
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return ((Integer) Uncheck.apply(new C2887q(this, 3), cArr)).intValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() {
        return Uncheck.getAsInt(new C2887q(this, 0));
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) {
        return ((Integer) Uncheck.apply(new C2887q(this, 2), charBuffer)).intValue();
    }
}
