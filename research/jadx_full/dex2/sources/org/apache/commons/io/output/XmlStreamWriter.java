package org.apache.commons.io.output;

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
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.input.XmlStreamReader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class XmlStreamWriter extends Writer {
    private static final int BUFFER_SIZE = 8192;
    private Charset charset;
    private final Charset defaultCharset;
    private final OutputStream out;
    private StringWriter prologWriter;
    private Writer writer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private XmlStreamWriter(OutputStream outputStream, Charset charset) {
        this.prologWriter = new StringWriter(8192);
        this.out = outputStream;
        Objects.requireNonNull(charset);
        this.defaultCharset = charset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static XmlStreamWriter$Builder builder() {
        return new XmlStreamWriter$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void detectEncoding(char[] cArr, int i, int i2) throws IOException {
        StringBuffer buffer = this.prologWriter.getBuffer();
        int length = buffer.length() + i2 > 8192 ? 8192 - buffer.length() : i2;
        this.prologWriter.write(cArr, i, length);
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
                if (i2 > length) {
                    this.writer.write(cArr, i + length, i2 - length);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.writer;
        if (writer != null) {
            writer.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDefaultEncoding() {
        return this.defaultCharset.name();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getEncoding() {
        return this.charset.name();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(cArr, i, i2);
        if (this.prologWriter != null) {
            detectEncoding(cArr, i, i2);
        } else {
            this.writer.write(cArr, i, i2);
        }
    }

    private XmlStreamWriter(XmlStreamWriter$Builder xmlStreamWriter$Builder) {
        this(xmlStreamWriter$Builder.getOutputStream(), xmlStreamWriter$Builder.getCharset());
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

    public /* synthetic */ XmlStreamWriter(XmlStreamWriter$Builder xmlStreamWriter$Builder, XmlStreamWriter$1 xmlStreamWriter$1) {
        this(xmlStreamWriter$Builder);
    }

    @Deprecated
    public XmlStreamWriter(OutputStream outputStream, String str) {
        this(outputStream, Charsets.toCharset(str, StandardCharsets.UTF_8));
    }
}
