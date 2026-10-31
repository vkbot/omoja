package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.StandardOpenOption;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class RandomAccessFileOutputStream extends OutputStream {
    private final RandomAccessFile randomAccessFile;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class Builder extends AbstractStreamBuilder<RandomAccessFileOutputStream, Builder> {
        private Builder() {
            setOpenOptions(StandardOpenOption.WRITE);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public RandomAccessFileOutputStream get() {
            return new RandomAccessFileOutputStream(this);
        }
    }

    private RandomAccessFileOutputStream(Builder builder) {
        this.randomAccessFile = builder.getRandomAccessFile();
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.randomAccessFile.close();
        super.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.randomAccessFile.getChannel().force(true);
        super.flush();
    }

    public RandomAccessFile getRandomAccessFile() {
        return this.randomAccessFile;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        this.randomAccessFile.write(i10);
    }
}
