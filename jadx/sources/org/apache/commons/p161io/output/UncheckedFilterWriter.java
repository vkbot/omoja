package org.apache.commons.p161io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.Uncheck;
import org.apache.commons.p161io.input.C2883m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UncheckedFilterWriter extends FilterWriter {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UncheckedFilterWriter, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public UncheckedFilterWriter get() {
            return new UncheckedFilterWriter(this);
        }
    }

    private UncheckedFilterWriter(Builder builder) {
        super(builder.getWriter());
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Writer lambda$append$0(char c) {
        return super.append(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Writer lambda$append$1(CharSequence charSequence) {
        return super.append(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Writer lambda$append$2(CharSequence charSequence, int i10, int i11) {
        return super.append(charSequence, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$3() throws IOException {
        super.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$flush$4() throws IOException {
        super.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$5(char[] cArr) throws IOException {
        super.write(cArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$6(char[] cArr, int i10, int i11) throws IOException {
        super.write(cArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$7(int i10) throws IOException {
        super.write(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$8(String str) throws IOException {
        super.write(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$write$9(String str, int i10, int i11) throws IOException {
        super.write(str, i10, i11);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i10, int i11) {
        return (Writer) Uncheck.apply(new C2913e(this, 4), charSequence, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new C2914f(this, 1));
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        Uncheck.run(new C2914f(this, 0));
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        Uncheck.accept(new C2913e(this, 3), cArr, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        Uncheck.accept(new C2915g(this, 0), cArr);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i10) {
        Uncheck.accept(new C2883m(this, 3), i10);
    }

    @Override // java.io.Writer
    public void write(String str) {
        Uncheck.accept(new C2915g(this, 1), str);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i10, int i11) {
        Uncheck.accept(new C2913e(this, 2), str, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        return (Writer) Uncheck.apply(new C2913e(this, 1), Character.valueOf(c));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        return (Writer) Uncheck.apply(new C2913e(this, 0), charSequence);
    }
}
