package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public LockableFileWriter(File file, Charset charset, boolean z, String str) {
        Objects.requireNonNull(file, "file");
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (absoluteFile.isDirectory()) {
            n0.b.A("File specified is a directory");
            throw null;
        }
        File file2 = new File(str == null ? FileUtils.getTempDirectoryPath() : str);
        FileUtils.forceMkdir(file2);
        testLockDir(file2);
        this.lockFile = new File(file2, absoluteFile.getName() + LCK);
        createLock();
        this.out = initWriter(absoluteFile, charset, z);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static LockableFileWriter$Builder builder() {
        return new LockableFileWriter$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Writer initWriter(File file, Charset charset, boolean z) {
        boolean zExists = file.exists();
        try {
            return new OutputStreamWriter(new FileOutputStream(file.getAbsolutePath(), z), Charsets.toCharset(charset));
        } catch (IOException | RuntimeException e) {
            FileUtils.deleteQuietly(this.lockFile);
            if (!zExists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void testLockDir(File file) {
        if (!file.exists()) {
            ai.onnxruntime.b.w(file.getAbsolutePath(), "Could not find lockDir: ");
        } else {
            if (file.canWrite()) {
                return;
            }
            ai.onnxruntime.b.w(file.getAbsolutePath(), "Could not write to lockDir: ");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.out.close();
        } finally {
            FileUtils.delete(this.lockFile);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    private LockableFileWriter(LockableFileWriter$Builder lockableFileWriter$Builder) {
        this(LockableFileWriter$Builder.access$100(lockableFileWriter$Builder), lockableFileWriter$Builder.getCharset(), LockableFileWriter$Builder.access$200(lockableFileWriter$Builder), LockableFileWriter$Builder.access$300(lockableFileWriter$Builder).getFile().toString());
    }

    @Deprecated
    public LockableFileWriter(File file) {
        this(file, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z) {
        this(file, z, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z, String str) {
        this(file, Charset.defaultCharset(), z, str);
    }

    @Deprecated
    public LockableFileWriter(File file, Charset charset) {
        this(file, charset, false, (String) null);
    }

    public /* synthetic */ LockableFileWriter(LockableFileWriter$Builder lockableFileWriter$Builder, LockableFileWriter$1 lockableFileWriter$1) {
        this(lockableFileWriter$Builder);
    }

    @Deprecated
    public LockableFileWriter(File file, String str) {
        this(file, str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, String str, boolean z, String str2) {
        this(file, Charsets.toCharset(str), z, str2);
    }

    @Deprecated
    public LockableFileWriter(String str) {
        this(str, false, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z) {
        this(str, z, (String) null);
    }

    @Deprecated
    public LockableFileWriter(String str, boolean z, String str2) {
        this(new File(str), z, str2);
    }
}
