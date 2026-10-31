package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UncheckedFilterInputStream extends FilterInputStream {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UncheckedFilterInputStream(UncheckedFilterInputStream$Builder uncheckedFilterInputStream$Builder) {
        super(uncheckedFilterInputStream$Builder.getInputStream());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer S(UncheckedFilterInputStream uncheckedFilterInputStream, byte[] bArr) {
        return uncheckedFilterInputStream.lambda$read$3(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int V(UncheckedFilterInputStream uncheckedFilterInputStream) {
        return uncheckedFilterInputStream.lambda$available$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Long b(UncheckedFilterInputStream uncheckedFilterInputStream, long j) {
        return uncheckedFilterInputStream.lambda$skip$6(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UncheckedFilterInputStream$Builder builder() {
        return new UncheckedFilterInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(UncheckedFilterInputStream uncheckedFilterInputStream) {
        uncheckedFilterInputStream.lambda$close$1();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Integer c0(UncheckedFilterInputStream uncheckedFilterInputStream, byte[] bArr, int i, int i2) {
        return uncheckedFilterInputStream.lambda$read$4(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int d0(UncheckedFilterInputStream uncheckedFilterInputStream) {
        return uncheckedFilterInputStream.lambda$read$2();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ int lambda$available$0() {
        return super.available();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$close$1() throws IOException {
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ int lambda$read$2() {
        return super.read();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Integer lambda$read$3(byte[] bArr) {
        return Integer.valueOf(super.read(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Integer lambda$read$4(byte[] bArr, int i, int i2) {
        return Integer.valueOf(super.read(bArr, i, i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$reset$5() throws IOException {
        super.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ Long lambda$skip$6(long j) {
        return Long.valueOf(super.skip(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void y(UncheckedFilterInputStream uncheckedFilterInputStream) {
        uncheckedFilterInputStream.lambda$reset$5();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return Uncheck.getAsInt(new o(this, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Uncheck.run(new p(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return ((Integer) Uncheck.apply(new o(this, 1), bArr, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        Uncheck.run(new p(this, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        return ((Long) Uncheck.apply(new o(this, 3), Long.valueOf(j))).longValue();
    }

    public /* synthetic */ UncheckedFilterInputStream(UncheckedFilterInputStream$Builder uncheckedFilterInputStream$Builder, UncheckedFilterInputStream$1 uncheckedFilterInputStream$1) {
        this(uncheckedFilterInputStream$Builder);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return ((Integer) Uncheck.apply(new o(this, 4), bArr)).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        return Uncheck.getAsInt(new o(this, 0));
    }
}
