package org.apache.commons.io.input;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.CharBuffer;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UncheckedBufferedReader extends BufferedReader {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedBufferedReader(UncheckedBufferedReader$Builder uncheckedBufferedReader$Builder) {
        super(uncheckedBufferedReader$Builder.getReader(), uncheckedBufferedReader$Builder.getBufferSize());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void S(UncheckedBufferedReader uncheckedBufferedReader, int i) {
        uncheckedBufferedReader.lambda$mark$1(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void V(UncheckedBufferedReader uncheckedBufferedReader) {
        uncheckedBufferedReader.lambda$close$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Long b(UncheckedBufferedReader uncheckedBufferedReader, long j) {
        return uncheckedBufferedReader.lambda$skip$9(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedBufferedReader$Builder builder() {
        return new UncheckedBufferedReader$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer c(UncheckedBufferedReader uncheckedBufferedReader, CharBuffer charBuffer) {
        return uncheckedBufferedReader.lambda$read$5(charBuffer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c0(UncheckedBufferedReader uncheckedBufferedReader) {
        uncheckedBufferedReader.lambda$reset$8();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String d0(UncheckedBufferedReader uncheckedBufferedReader) {
        return uncheckedBufferedReader.lambda$readLine$6();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer e0(UncheckedBufferedReader uncheckedBufferedReader, char[] cArr, int i, int i2) {
        return uncheckedBufferedReader.lambda$read$4(cArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean f0(UncheckedBufferedReader uncheckedBufferedReader) {
        return uncheckedBufferedReader.lambda$ready$7();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer g0(UncheckedBufferedReader uncheckedBufferedReader, char[] cArr) {
        return uncheckedBufferedReader.lambda$read$3(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$close$0() throws IOException {
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$mark$1(int i) throws IOException {
        super.mark(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ int lambda$read$2() {
        return super.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Integer lambda$read$3(char[] cArr) {
        return Integer.valueOf(super.read(cArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Integer lambda$read$4(char[] cArr, int i, int i2) {
        return Integer.valueOf(super.read(cArr, i, i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Integer lambda$read$5(CharBuffer charBuffer) {
        return Integer.valueOf(super.read(charBuffer));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ String lambda$readLine$6() {
        return super.readLine();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ boolean lambda$ready$7() {
        return super.ready();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$reset$8() throws IOException {
        super.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Long lambda$skip$9(long j) {
        return Long.valueOf(super.skip(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int y(UncheckedBufferedReader uncheckedBufferedReader) {
        return uncheckedBufferedReader.lambda$read$2();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new n(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public void mark(int i) {
        Uncheck.accept(new m(this, 0), i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        return ((Integer) Uncheck.apply(new l(this, 3), cArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader
    public String readLine() {
        return (String) Uncheck.get(new l(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public boolean ready() {
        return Uncheck.getAsBoolean(new l(this, 6));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public void reset() {
        Uncheck.run(new n(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public long skip(long j) {
        return ((Long) Uncheck.apply(new l(this, 4), Long.valueOf(j))).longValue();
    }

    public /* synthetic */ UncheckedBufferedReader(UncheckedBufferedReader$Builder uncheckedBufferedReader$Builder, UncheckedBufferedReader$1 uncheckedBufferedReader$1) {
        this(uncheckedBufferedReader$Builder);
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return ((Integer) Uncheck.apply(new l(this, 0), cArr)).intValue();
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() {
        return Uncheck.getAsInt(new l(this, 5));
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) {
        return ((Integer) Uncheck.apply(new l(this, 2), charBuffer)).intValue();
    }
}
