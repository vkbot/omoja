package org.apache.commons.p161io.input;

import androidx.fragment.app.C0566h;
import java.io.BufferedReader;
import java.io.IOException;
import java.nio.CharBuffer;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UncheckedBufferedReader extends BufferedReader {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UncheckedBufferedReader, Builder> {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ UncheckedBufferedReader lambda$get$0() {
            return new UncheckedBufferedReader(this);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public UncheckedBufferedReader get() {
            return (UncheckedBufferedReader) Uncheck.get(new C0566h(25, this));
        }
    }

    private UncheckedBufferedReader(Builder builder) {
        super(builder.getReader(), builder.getBufferSize());
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
    public /* synthetic */ String lambda$readLine$6() {
        return super.readLine();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$ready$7() {
        return super.ready();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reset$8() throws IOException {
        super.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long lambda$skip$9(long j10) {
        return Long.valueOf(super.skip(j10));
    }

    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new C2884n(this, 1));
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void mark(int i10) {
        Uncheck.accept(new C2883m(this, 0), i10);
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i10, int i11) {
        return ((Integer) Uncheck.apply(new C2882l(this, 3), cArr, Integer.valueOf(i10), Integer.valueOf(i11))).intValue();
    }

    @Override // java.io.BufferedReader
    public String readLine() {
        return (String) Uncheck.get(new C2882l(this, 1));
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public boolean ready() {
        return Uncheck.getAsBoolean(new C2882l(this, 6));
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public void reset() {
        Uncheck.run(new C2884n(this, 0));
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public long skip(long j10) {
        return ((Long) Uncheck.apply(new C2882l(this, 4), Long.valueOf(j10))).longValue();
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return ((Integer) Uncheck.apply(new C2882l(this, 0), cArr)).intValue();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() {
        return Uncheck.getAsInt(new C2882l(this, 5));
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) {
        return ((Integer) Uncheck.apply(new C2882l(this, 2), charBuffer)).intValue();
    }
}
