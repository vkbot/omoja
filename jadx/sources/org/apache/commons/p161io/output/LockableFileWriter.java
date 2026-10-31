package org.apache.commons.p161io.output;

import ai.onnxruntime.C0075b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.build.AbstractOrigin;
import org.apache.commons.p161io.build.AbstractOriginSupplier;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    @Deprecated
    public LockableFileWriter(File file, Charset charset, boolean z9, String str) throws IOException {
        Objects.requireNonNull(file, "file");
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (absoluteFile.isDirectory()) {
            C2467b.m3820A("File specified is a directory");
            throw null;
        }
        File file2 = new File(str == null ? FileUtils.getTempDirectoryPath() : str);
        FileUtils.forceMkdir(file2);
        testLockDir(file2);
        this.lockFile = new File(file2, absoluteFile.getName() + LCK);
        createLock();
        this.out = initWriter(absoluteFile, charset, z9);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void createLock() {
        synchronized (LockableFileWriter.class) {
            try {
                if (!this.lockFile.createNewFile()) {
                    throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
                }
                this.lockFile.deleteOnExit();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Writer initWriter(File file, Charset charset, boolean z9) {
        boolean zExists = file.exists();
        try {
            return new OutputStreamWriter(new FileOutputStream(file.getAbsolutePath(), z9), Charsets.toCharset(charset));
        } catch (IOException | RuntimeException e) {
            FileUtils.deleteQuietly(this.lockFile);
            if (!zExists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        }
    }

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            C0075b.m198w(file.getAbsolutePath(), "Could not find lockDir: ");
        } else {
            if (file.canWrite()) {
                return;
            }
            C0075b.m198w(file.getAbsolutePath(), "Could not write to lockDir: ");
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } finally {
            FileUtils.delete(this.lockFile);
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        this.out.write(cArr, i10, i11);
    }

    @Override // java.io.Writer
    public void write(int i10) throws IOException {
        this.out.write(i10);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) throws IOException {
        this.out.write(str, i10, i11);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<LockableFileWriter, Builder> {
        private boolean append;
        private AbstractOrigin<?, ?> lockDirectory = AbstractOriginSupplier.newFileOrigin(FileUtils.getTempDirectoryPath());

        public Builder() {
            setBufferSizeDefault(1024);
            setBufferSize(1024);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File checkOriginFile() {
            return checkOrigin().getFile();
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public LockableFileWriter get() {
            return new LockableFileWriter(this);
        }

        public Builder setAppend(boolean z9) {
            this.append = z9;
            return this;
        }

        public Builder setLockDirectory(File file) {
            if (file == null) {
                file = FileUtils.getTempDirectory();
            }
            this.lockDirectory = AbstractOriginSupplier.newFileOrigin(file);
            return this;
        }

        public Builder setLockDirectory(String str) {
            if (str == null) {
                str = FileUtils.getTempDirectoryPath();
            }
            this.lockDirectory = AbstractOriginSupplier.newFileOrigin(str);
            return this;
        }
    }

    private LockableFileWriter(Builder builder) {
        this(builder.checkOriginFile(), builder.getCharset(), builder.append, builder.lockDirectory.getFile().toString());
    }

    @Deprecated
    public LockableFileWriter(File file) {
        this(file, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z9) {
        this(file, z9, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z9, String str) {
        this(file, Charset.defaultCharset(), z9, str);
    }

    @Deprecated
    public LockableFileWriter(File file, Charset charset) {
        this(file, charset, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, String str) {
        this(file, str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, String str, boolean z9, String str2) {
        this(file, Charsets.toCharset(str), z9, str2);
    }

    @Deprecated
    public LockableFileWriter(String str) {
        this(str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z9) {
        this(str, z9, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z9, String str2) {
        this(new File(str), z9, str2);
    }
}
