package org.apache.commons.p161io.output;

import androidx.emoji2.text.flatbuffer.C0489a;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Objects;
import java.util.function.Supplier;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.file.PathUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {
    private boolean closed;
    private OutputStream currentOutputStream;
    private final Path directory;
    private ByteArrayOutputStream memoryOutputStream;
    private Path outputPath;
    private final String prefix;
    private final String suffix;

    private DeferredFileOutputStream(Builder builder) {
        super(builder.threshold);
        this.outputPath = toPath(builder.outputFile, (Supplier<Path>) null);
        this.prefix = builder.prefix;
        this.suffix = builder.suffix;
        this.directory = toPath(builder.directory, new C0489a(8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(checkBufferSize(builder.getBufferSize()));
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    public static Builder builder() {
        return new Builder();
    }

    private static int checkBufferSize(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        C1929i.m3029k("Initial buffer size must be at least 0.");
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Path toPath(File file, Supplier<Path> supplier) {
        if (file != null) {
            return file.toPath();
        }
        if (supplier == null) {
            return null;
        }
        return AbstractC2109a.m3281m(supplier.get());
    }

    @Override // org.apache.commons.p161io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.closed = true;
    }

    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.memoryOutputStream;
        if (byteArrayOutputStream != null) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    public File getFile() {
        Path path = this.outputPath;
        if (path != null) {
            return path.toFile();
        }
        return null;
    }

    public Path getPath() {
        return this.outputPath;
    }

    @Override // org.apache.commons.p161io.output.ThresholdingOutputStream
    @Deprecated
    public OutputStream getStream() {
        return this.currentOutputStream;
    }

    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    @Override // org.apache.commons.p161io.output.ThresholdingOutputStream
    public void thresholdReached() throws IOException {
        String str = this.prefix;
        if (str != null) {
            this.outputPath = Files.createTempFile(this.directory, str, this.suffix, new FileAttribute[0]);
        }
        PathUtils.createParentDirectories(this.outputPath, null, PathUtils.EMPTY_FILE_ATTRIBUTE_ARRAY);
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(this.outputPath, new OpenOption[0]);
        try {
            this.memoryOutputStream.writeTo(outputStreamNewOutputStream);
            this.currentOutputStream = outputStreamNewOutputStream;
            this.memoryOutputStream = null;
        } catch (IOException e) {
            outputStreamNewOutputStream.close();
            throw e;
        }
    }

    public InputStream toInputStream() throws IOException {
        if (this.closed) {
            return isInMemory() ? this.memoryOutputStream.toInputStream() : Files.newInputStream(this.outputPath, new OpenOption[0]);
        }
        C2467b.m3820A("Stream not closed");
        return null;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (!this.closed) {
            C2467b.m3820A("Stream not closed");
        } else if (isInMemory()) {
            this.memoryOutputStream.writeTo(outputStream);
        } else {
            Files.copy(this.outputPath, outputStream);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<DeferredFileOutputStream, Builder> {
        private Path directory;
        private Path outputFile;
        private String prefix;
        private String suffix;
        private int threshold;

        public Builder() {
            setBufferSizeDefault(1024);
            setBufferSize(1024);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public DeferredFileOutputStream get() {
            return new DeferredFileOutputStream(this);
        }

        public Builder setDirectory(File file) {
            this.directory = DeferredFileOutputStream.toPath(file, (Supplier<Path>) null);
            return this;
        }

        public Builder setOutputFile(File file) {
            this.outputFile = DeferredFileOutputStream.toPath(file, (Supplier<Path>) null);
            return this;
        }

        public Builder setPrefix(String str) {
            this.prefix = str;
            return this;
        }

        public Builder setSuffix(String str) {
            this.suffix = str;
            return this;
        }

        public Builder setThreshold(int i10) {
            this.threshold = i10;
            return this;
        }

        public Builder setDirectory(Path path) {
            this.directory = DeferredFileOutputStream.toPath(path, (Supplier<Path>) null);
            return this;
        }

        public Builder setOutputFile(Path path) {
            this.outputFile = DeferredFileOutputStream.toPath(path, (Supplier<Path>) null);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Path toPath(Path path, Supplier<Path> supplier) {
        if (path != null) {
            return path;
        }
        if (supplier == null) {
            return null;
        }
        return AbstractC2109a.m3281m(supplier.get());
    }

    @Deprecated
    public DeferredFileOutputStream(int i10, File file) {
        this(i10, file, null, null, null, 1024);
    }

    private DeferredFileOutputStream(int i10, File file, String str, String str2, File file2, int i11) {
        super(i10);
        this.outputPath = toPath(file, (Supplier<Path>) null);
        this.prefix = str;
        this.suffix = str2;
        this.directory = toPath(file2, new C0489a(8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(checkBufferSize(i11));
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    @Deprecated
    public DeferredFileOutputStream(int i10, int i11, File file) {
        this(i10, file, null, null, null, i11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i10, int i11, String str, String str2, File file) {
        this(i10, null, str, str2, file, i11);
        Objects.requireNonNull(str, "prefix");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i10, String str, String str2, File file) {
        this(i10, null, str, str2, file, 1024);
        Objects.requireNonNull(str, "prefix");
    }
}
