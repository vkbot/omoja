package org.apache.commons.io.input;

import java.io.FilterReader;
import java.io.IOException;
import java.nio.CharBuffer;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UncheckedFilterReader extends FilterReader {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedFilterReader(UncheckedFilterReader$Builder uncheckedFilterReader$Builder) {
        super(uncheckedFilterReader$Builder.getReader());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer S(UncheckedFilterReader uncheckedFilterReader, CharBuffer charBuffer) {
        return uncheckedFilterReader.lambda$read$5(charBuffer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer V(UncheckedFilterReader uncheckedFilterReader, char[] cArr, int i, int i2) {
        return uncheckedFilterReader.lambda$read$4(cArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(UncheckedFilterReader uncheckedFilterReader) {
        uncheckedFilterReader.lambda$reset$7();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedFilterReader$Builder builder() {
        return new UncheckedFilterReader$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(UncheckedFilterReader uncheckedFilterReader) {
        uncheckedFilterReader.lambda$close$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean c0(UncheckedFilterReader uncheckedFilterReader) {
        return uncheckedFilterReader.lambda$ready$6();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Long d0(UncheckedFilterReader uncheckedFilterReader, long j) {
        return uncheckedFilterReader.lambda$skip$8(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer e0(UncheckedFilterReader uncheckedFilterReader, char[] cArr) {
        return uncheckedFilterReader.lambda$read$3(cArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f0(UncheckedFilterReader uncheckedFilterReader, int i) {
        uncheckedFilterReader.lambda$mark$1(i);
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
    private /* synthetic */ boolean lambda$ready$6() {
        return super.ready();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$reset$7() throws IOException {
        super.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Long lambda$skip$8(long j) {
        return Long.valueOf(super.skip(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int y(UncheckedFilterReader uncheckedFilterReader) {
        return uncheckedFilterReader.lambda$read$2();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new r(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader
    public void mark(int i) {
        Uncheck.accept(new m(this, 1), i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        return ((Integer) Uncheck.apply(new q(this, 1), cArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader
    public boolean ready() {
        return Uncheck.getAsBoolean(new q(this, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader
    public void reset() {
        Uncheck.run(new r(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterReader, java.io.Reader
    public long skip(long j) {
        return ((Long) Uncheck.apply(new q(this, 5), Long.valueOf(j))).longValue();
    }

    public /* synthetic */ UncheckedFilterReader(UncheckedFilterReader$Builder uncheckedFilterReader$Builder, UncheckedFilterReader$1 uncheckedFilterReader$1) {
        this(uncheckedFilterReader$Builder);
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return ((Integer) Uncheck.apply(new q(this, 3), cArr)).intValue();
    }

    @Override // java.io.FilterReader, java.io.Reader
    public int read() {
        return Uncheck.getAsInt(new q(this, 0));
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) {
        return ((Integer) Uncheck.apply(new q(this, 2), charBuffer)).intValue();
    }
}
