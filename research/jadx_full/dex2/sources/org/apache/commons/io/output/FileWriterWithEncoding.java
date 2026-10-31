package org.apache.commons.io.output;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Objects;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FileWriterWithEncoding extends ProxyWriter {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FileWriterWithEncoding(FileWriterWithEncoding$Builder fileWriterWithEncoding$Builder) {
        super(initWriter(FileWriterWithEncoding$Builder.access$100(fileWriterWithEncoding$Builder), FileWriterWithEncoding$Builder.access$200(fileWriterWithEncoding$Builder), FileWriterWithEncoding$Builder.access$300(fileWriterWithEncoding$Builder)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FileWriterWithEncoding$Builder builder() {
        return new FileWriterWithEncoding$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:30:? A[SYNTHETIC] */
    private static OutputStreamWriter initWriter(File file, Object obj, boolean z) throws Throwable {
        Objects.requireNonNull(file, "file");
        boolean zExists = file.exists();
        try {
            OutputStream outputStreamNewOutputStream = FileUtils.newOutputStream(file, z);
            if (obj != null && !(obj instanceof Charset)) {
                return obj instanceof CharsetEncoder ? new OutputStreamWriter(outputStreamNewOutputStream, (CharsetEncoder) obj) : new OutputStreamWriter(outputStreamNewOutputStream, (String) obj);
            }
            return new OutputStreamWriter(outputStreamNewOutputStream, Charsets.toCharset((Charset) obj));
        } catch (IOException e) {
            e = e;
            try {
                IOUtils.close((Closeable) null);
            } catch (IOException e2) {
                e.addSuppressed(e2);
            }
            if (!zExists) {
                throw e;
            }
            FileUtils.deleteQuietly(file);
            throw e;
        } catch (RuntimeException e3) {
            e = e3;
            IOUtils.close((Closeable) null);
            if (!zExists) {
                throw e;
            }
            FileUtils.deleteQuietly(file);
            throw e;
        }
    }

    public /* synthetic */ FileWriterWithEncoding(FileWriterWithEncoding$Builder fileWriterWithEncoding$Builder, FileWriterWithEncoding$1 fileWriterWithEncoding$1) {
        this(fileWriterWithEncoding$Builder);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset) {
        this(file, charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset, boolean z) {
        this(initWriter(file, charset, z));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) {
        this(file, charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z) {
        this(initWriter(file, charsetEncoder, z));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str) {
        this(file, str, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str, boolean z) {
        this(initWriter(file, str, z));
    }

    private FileWriterWithEncoding(OutputStreamWriter outputStreamWriter) {
        super(outputStreamWriter);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset) {
        this(new File(str), charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset, boolean z) {
        this(new File(str), charset, z);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) {
        this(new File(str), charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z) {
        this(new File(str), charsetEncoder, z);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2) {
        this(new File(str), str2, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2, boolean z) {
        this(new File(str), str2, z);
    }
}
