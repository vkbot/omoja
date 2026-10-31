package org.apache.commons.io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.io.function.Uncheck;
import org.apache.commons.io.input.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UncheckedFilterWriter extends FilterWriter {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedFilterWriter(UncheckedFilterWriter$Builder uncheckedFilterWriter$Builder) {
        super(uncheckedFilterWriter$Builder.getWriter());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void S(UncheckedFilterWriter uncheckedFilterWriter, char[] cArr) {
        uncheckedFilterWriter.lambda$write$5(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void V(UncheckedFilterWriter uncheckedFilterWriter) {
        uncheckedFilterWriter.lambda$close$3();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(UncheckedFilterWriter uncheckedFilterWriter, String str) {
        uncheckedFilterWriter.lambda$write$8(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedFilterWriter$Builder builder() {
        return new UncheckedFilterWriter$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(UncheckedFilterWriter uncheckedFilterWriter, char[] cArr, int i, int i2) {
        uncheckedFilterWriter.lambda$write$6(cArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Writer c0(UncheckedFilterWriter uncheckedFilterWriter, CharSequence charSequence, int i, int i2) {
        return uncheckedFilterWriter.lambda$append$2(charSequence, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Writer d0(UncheckedFilterWriter uncheckedFilterWriter, CharSequence charSequence) {
        return uncheckedFilterWriter.lambda$append$1(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Writer e0(UncheckedFilterWriter uncheckedFilterWriter, char c) {
        return uncheckedFilterWriter.lambda$append$0(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f0(UncheckedFilterWriter uncheckedFilterWriter, int i) {
        uncheckedFilterWriter.lambda$write$7(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void g0(UncheckedFilterWriter uncheckedFilterWriter) {
        uncheckedFilterWriter.lambda$flush$4();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Writer lambda$append$0(char c) {
        return super.append(c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Writer lambda$append$1(CharSequence charSequence) {
        return super.append(charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Writer lambda$append$2(CharSequence charSequence, int i, int i2) {
        return super.append(charSequence, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$close$3() throws IOException {
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$flush$4() throws IOException {
        super.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$5(char[] cArr) throws IOException {
        super.write(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$6(char[] cArr, int i, int i2) throws IOException {
        super.write(cArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$7(int i) throws IOException {
        super.write(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$8(String str) throws IOException {
        super.write(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$write$9(String str, int i, int i2) throws IOException {
        super.write(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(UncheckedFilterWriter uncheckedFilterWriter, String str, int i, int i2) {
        uncheckedFilterWriter.lambda$write$9(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) {
        return (Writer) Uncheck.apply(new e(this, 4), charSequence, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new f(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        Uncheck.run(new f(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        Uncheck.accept(new e(this, 3), cArr, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public /* synthetic */ UncheckedFilterWriter(UncheckedFilterWriter$Builder uncheckedFilterWriter$Builder, UncheckedFilterWriter$1 uncheckedFilterWriter$1) {
        this(uncheckedFilterWriter$Builder);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        Uncheck.accept(new g(this, 0), cArr);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) {
        Uncheck.accept(new m(this, 3), i);
    }

    @Override // java.io.Writer
    public void write(String str) {
        Uncheck.accept(new g(this, 1), str);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        return append(charSequence);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        Uncheck.accept(new e(this, 2), str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        return append(charSequence, i, i2);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) {
        return (Writer) Uncheck.apply(new e(this, 1), Character.valueOf(c));
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) {
        return (Writer) Uncheck.apply(new e(this, 0), charSequence);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* bridge */ /* synthetic */ Appendable append(char c) {
        return append(c);
    }
}
