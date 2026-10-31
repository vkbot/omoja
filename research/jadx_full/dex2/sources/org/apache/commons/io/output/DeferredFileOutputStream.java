package org.apache.commons.io.output;

import j1.i;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.commons.io.file.PathUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class DeferredFileOutputStream extends ThresholdingOutputStream {
    private boolean closed;
    private OutputStream currentOutputStream;
    private final Path directory;
    private ByteArrayOutputStream memoryOutputStream;
    private Path outputPath;
    private final String prefix;
    private final String suffix;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private DeferredFileOutputStream(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder) {
        super(DeferredFileOutputStream$Builder.access$300(deferredFileOutputStream$Builder));
        this.outputPath = toPath(DeferredFileOutputStream$Builder.access$400(deferredFileOutputStream$Builder), (Supplier<Path>) null);
        this.prefix = DeferredFileOutputStream$Builder.access$500(deferredFileOutputStream$Builder);
        this.suffix = DeferredFileOutputStream$Builder.access$600(deferredFileOutputStream$Builder);
        this.directory = toPath(DeferredFileOutputStream$Builder.access$700(deferredFileOutputStream$Builder), (Supplier<Path>) new androidx.emoji2.text.flatbuffer.a(8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(checkBufferSize(deferredFileOutputStream$Builder.getBufferSize()));
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path access$100(File file, Supplier supplier) {
        return toPath(file, (Supplier<Path>) supplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Path access$200(Path path, Supplier supplier) {
        return toPath(path, (Supplier<Path>) supplier);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static DeferredFileOutputStream$Builder builder() {
        return new DeferredFileOutputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int checkBufferSize(int i) {
        if (i >= 0) {
            return i;
        }
        i.k("Initial buffer size must be at least 0.");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path toPath(File file, Supplier<Path> supplier) {
        if (file != null) {
            return c5.h.i(file);
        }
        if (supplier == null) {
            return null;
        }
        return kotlin.internal.jdk8.a.m(supplier.get());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.closed = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.memoryOutputStream;
        if (byteArrayOutputStream != null) {
            return byteArrayOutputStream.toByteArray();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File getFile() {
        Path path = this.outputPath;
        if (path != null) {
            return ai.onnxruntime.c.r(path);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Path getPath() {
        return this.outputPath;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    @Deprecated
    public OutputStream getStream() {
        return this.currentOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.ThresholdingOutputStream
    public void thresholdReached() throws IOException {
        String str = this.prefix;
        if (str != null) {
            this.outputPath = org.apache.commons.io.filefilter.f.e(this.directory, str, this.suffix, new FileAttribute[0]);
        }
        PathUtils.createParentDirectories(this.outputPath, null, PathUtils.EMPTY_FILE_ATTRIBUTE_ARRAY);
        OutputStream outputStreamF = org.apache.commons.io.d.f(this.outputPath, new OpenOption[0]);
        try {
            this.memoryOutputStream.writeTo(outputStreamF);
            this.currentOutputStream = outputStreamF;
            this.memoryOutputStream = null;
        } catch (IOException e) {
            outputStreamF.close();
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public InputStream toInputStream() {
        if (this.closed) {
            return isInMemory() ? this.memoryOutputStream.toInputStream() : kotlin.io.path.f.e(this.outputPath, new OpenOption[0]);
        }
        n0.b.A("Stream not closed");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void writeTo(OutputStream outputStream) throws IOException {
        if (!this.closed) {
            n0.b.A("Stream not closed");
        } else if (isInMemory()) {
            this.memoryOutputStream.writeTo(outputStream);
        } else {
            org.apache.commons.io.filefilter.f.s(this.outputPath, outputStream);
        }
    }

    private static Path toPath(Path path, Supplier<Path> supplier) {
        if (path != null) {
            return path;
        }
        if (supplier == null) {
            return null;
        }
        return kotlin.internal.jdk8.a.m(supplier.get());
    }

    public /* synthetic */ DeferredFileOutputStream(DeferredFileOutputStream$Builder deferredFileOutputStream$Builder, DeferredFileOutputStream$1 deferredFileOutputStream$1) {
        this(deferredFileOutputStream$Builder);
    }

    @Deprecated
    public DeferredFileOutputStream(int i, File file) {
        this(i, file, null, null, null, 1024);
    }

    private DeferredFileOutputStream(int i, File file, String str, String str2, File file2, int i2) {
        super(i);
        this.outputPath = toPath(file, (Supplier<Path>) null);
        this.prefix = str;
        this.suffix = str2;
        this.directory = toPath(file2, (Supplier<Path>) new androidx.emoji2.text.flatbuffer.a(8));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(checkBufferSize(i2));
        this.memoryOutputStream = byteArrayOutputStream;
        this.currentOutputStream = byteArrayOutputStream;
    }

    @Deprecated
    public DeferredFileOutputStream(int i, int i2, File file) {
        this(i, file, null, null, null, i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i, int i2, String str, String str2, File file) {
        this(i, null, str, str2, file, i2);
        Objects.requireNonNull(str, "prefix");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public DeferredFileOutputStream(int i, String str, String str2, File file) {
        this(i, null, str, str2, file, 1024);
        Objects.requireNonNull(str, "prefix");
    }
}
