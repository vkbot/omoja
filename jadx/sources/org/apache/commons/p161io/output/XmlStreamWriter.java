package org.apache.commons.p161io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.input.XmlStreamReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlStreamWriter extends Writer {
    private static final int BUFFER_SIZE = 8192;
    private Charset charset;
    private final Charset defaultCharset;
    private final OutputStream out;
    private StringWriter prologWriter;
    private Writer writer;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<XmlStreamWriter, Builder> {
        public Builder() {
            Charset charset = StandardCharsets.UTF_8;
            setCharsetDefault(charset);
            setCharset(charset);
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public XmlStreamWriter get() {
            return new XmlStreamWriter(this);
        }
    }

    private XmlStreamWriter(OutputStream outputStream, Charset charset) {
        this.prologWriter = new StringWriter(8192);
        this.out = outputStream;
        Objects.requireNonNull(charset);
        this.defaultCharset = charset;
    }

    public static Builder builder() {
        return new Builder();
    }

    private void detectEncoding(char[] cArr, int i10, int i11) throws IOException {
        StringBuffer buffer = this.prologWriter.getBuffer();
        int length = buffer.length() + i11 > 8192 ? 8192 - buffer.length() : i11;
        this.prologWriter.write(cArr, i10, length);
        if (buffer.length() >= 5) {
            if (buffer.substring(0, 5).equals("<?xml")) {
                int iIndexOf = buffer.indexOf("?>");
                if (iIndexOf > 0) {
                    Matcher matcher = XmlStreamReader.ENCODING_PATTERN.matcher(buffer.substring(0, iIndexOf));
                    if (matcher.find()) {
                        String upperCase = matcher.group(1).toUpperCase(Locale.ROOT);
                        this.charset = Charset.forName(upperCase.substring(1, upperCase.length() - 1));
                    } else {
                        this.charset = this.defaultCharset;
                    }
                } else if (buffer.length() >= 8192) {
                    this.charset = this.defaultCharset;
                }
            } else {
                this.charset = this.defaultCharset;
            }
            if (this.charset != null) {
                this.prologWriter = null;
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.out, this.charset);
                this.writer = outputStreamWriter;
                outputStreamWriter.write(buffer.toString());
                if (i11 > length) {
                    this.writer.write(cArr, i10 + length, i11 - length);
                }
            }
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.writer == null) {
            this.charset = this.defaultCharset;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.out, this.charset);
            this.writer = outputStreamWriter;
            outputStreamWriter.write(this.prologWriter.toString());
        }
        this.writer.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.writer;
        if (writer != null) {
            writer.flush();
        }
    }

    public String getDefaultEncoding() {
        return this.defaultCharset.name();
    }

    public String getEncoding() {
        return this.charset.name();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        if (this.prologWriter != null) {
            detectEncoding(cArr, i10, i11);
        } else {
            this.writer.write(cArr, i10, i11);
        }
    }

    private XmlStreamWriter(Builder builder) {
        this(builder.getOutputStream(), builder.getCharset());
    }

    @Deprecated
    public XmlStreamWriter(File file) {
        this(file, (String) null);
    }

    @Deprecated
    public XmlStreamWriter(File file, String str) {
        this(new FileOutputStream(file), str);
    }

    @Deprecated
    public XmlStreamWriter(OutputStream outputStream) {
        this(outputStream, StandardCharsets.UTF_8);
    }

    @Deprecated
    public XmlStreamWriter(OutputStream outputStream, String str) {
        this(outputStream, Charsets.toCharset(str, StandardCharsets.UTF_8));
    }
}
