package org.apache.commons.p161io.output;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Objects;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.FileUtils;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class FileWriterWithEncoding extends ProxyWriter {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<FileWriterWithEncoding, Builder> {
        private boolean append;
        private CharsetEncoder charsetEncoder = super.getCharset().newEncoder();

        /* JADX INFO: Access modifiers changed from: private */
        public File checkOriginFile() {
            return checkOrigin().getFile();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object getEncoder() {
            if (this.charsetEncoder != null && getCharset() != null && !this.charsetEncoder.charset().equals(getCharset())) {
                throw new IllegalStateException(String.format("Mismatched Charset(%s) and CharsetEncoder(%s)", getCharset(), this.charsetEncoder.charset()));
            }
            CharsetEncoder charsetEncoder = this.charsetEncoder;
            return charsetEncoder != null ? charsetEncoder : getCharset();
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public FileWriterWithEncoding get() {
            return new FileWriterWithEncoding(this);
        }

        public Builder setAppend(boolean z9) {
            this.append = z9;
            return this;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            this.charsetEncoder = charsetEncoder;
            return this;
        }
    }

    private FileWriterWithEncoding(Builder builder) {
        super(initWriter(builder.checkOriginFile(), builder.getEncoder(), builder.append));
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:30:? A[SYNTHETIC] */
    private static OutputStreamWriter initWriter(File file, Object obj, boolean z9) throws Throwable {
        Objects.requireNonNull(file, "file");
        boolean zExists = file.exists();
        try {
            OutputStream outputStreamNewOutputStream = FileUtils.newOutputStream(file, z9);
            if (obj != null && !(obj instanceof Charset)) {
                return obj instanceof CharsetEncoder ? new OutputStreamWriter(outputStreamNewOutputStream, (CharsetEncoder) obj) : new OutputStreamWriter(outputStreamNewOutputStream, (String) obj);
            }
            return new OutputStreamWriter(outputStreamNewOutputStream, Charsets.toCharset((Charset) obj));
        } catch (IOException e) {
            e = e;
            try {
                IOUtils.close((Closeable) null);
            } catch (IOException e6) {
                e.addSuppressed(e6);
            }
            if (!zExists) {
                throw e;
            }
            FileUtils.deleteQuietly(file);
            throw e;
        } catch (RuntimeException e10) {
            e = e10;
            IOUtils.close((Closeable) null);
            if (!zExists) {
                throw e;
            }
            FileUtils.deleteQuietly(file);
            throw e;
        }
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset) {
        this(file, charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, Charset charset, boolean z9) {
        this(initWriter(file, charset, z9));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) {
        this(file, charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z9) {
        this(initWriter(file, charsetEncoder, z9));
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str) {
        this(file, str, false);
    }

    @Deprecated
    public FileWriterWithEncoding(File file, String str, boolean z9) {
        this(initWriter(file, str, z9));
    }

    private FileWriterWithEncoding(OutputStreamWriter outputStreamWriter) {
        super(outputStreamWriter);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset) {
        this(new File(str), charset, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, Charset charset, boolean z9) {
        this(new File(str), charset, z9);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) {
        this(new File(str), charsetEncoder, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z9) {
        this(new File(str), charsetEncoder, z9);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2) {
        this(new File(str), str2, false);
    }

    @Deprecated
    public FileWriterWithEncoding(String str, String str2, boolean z9) {
        this(new File(str), str2, z9);
    }
}
