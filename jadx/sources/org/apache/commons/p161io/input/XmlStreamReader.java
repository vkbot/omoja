package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import androidx.appcompat.app.AppCompatDelegate;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.internal.jdk8.AbstractC2109a;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.p161io.ByteOrderMark;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOConsumer;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlStreamReader extends Reader {
    private static final ByteOrderMark[] BOMS;
    private static final Pattern CHARSET_PATTERN;
    private static final String EBCDIC = "CP1047";
    public static final Pattern ENCODING_PATTERN;
    private static final String HTTP_EX_1 = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be null";
    private static final String HTTP_EX_2 = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";
    private static final String HTTP_EX_3 = "Illegal encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Illegal MIME";
    private static final String RAW_EX_1 = "Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";
    private static final String RAW_EX_2 = "Illegal encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";
    private static final String US_ASCII;
    private static final String UTF_16;
    private static final String UTF_16BE;
    private static final String UTF_16LE;
    private static final String UTF_32 = "UTF-32";
    private static final String UTF_32BE = "UTF-32BE";
    private static final String UTF_32LE = "UTF-32LE";
    private static final String UTF_8;
    private static final ByteOrderMark[] XML_GUESS_BYTES;
    private final String defaultEncoding;
    private final String encoding;
    private final Reader reader;

    static {
        String strName = StandardCharsets.UTF_8.name();
        UTF_8 = strName;
        US_ASCII = StandardCharsets.US_ASCII.name();
        String strName2 = StandardCharsets.UTF_16BE.name();
        UTF_16BE = strName2;
        String strName3 = StandardCharsets.UTF_16LE.name();
        UTF_16LE = strName3;
        UTF_16 = StandardCharsets.UTF_16.name();
        BOMS = new ByteOrderMark[]{ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE};
        XML_GUESS_BYTES = new ByteOrderMark[]{new ByteOrderMark(strName, 60, 63, FTPReply.SERVICE_NOT_READY, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), new ByteOrderMark(strName2, 0, 60, 0, 63), new ByteOrderMark(strName3, 60, 0, 63, 0), new ByteOrderMark(UTF_32BE, 0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 0, FTPReply.SERVICE_NOT_READY, 0, 0, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY), new ByteOrderMark(UTF_32LE, 60, 0, 0, 0, 63, 0, 0, 0, FTPReply.SERVICE_NOT_READY, 0, 0, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 0, 0, 0), new ByteOrderMark(EBCDIC, 76, 111, 167, 148)};
        CHARSET_PATTERN = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
        ENCODING_PATTERN = Pattern.compile("^<\\?xml\\s+(?:version\\s*=\\s*(?:(?:\"1\\.[0-9]+\")|(?:'1.[0-9]+'))\\s+)??encoding\\s*=\\s*((?:\"[A-Za-z0-9][A-Za-z0-9._+:-]*\")|(?:'[A-Za-z0-9][A-Za-z0-9._+:-]*'))", 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public XmlStreamReader(URLConnection uRLConnection, String str) throws IOException {
        Objects.requireNonNull(uRLConnection, "urlConnection");
        this.defaultEncoding = str;
        String contentType = uRLConnection.getContentType();
        BOMInputStream bOMInputStream = ((BOMInputStream.Builder) BOMInputStream.builder().setInputStream(new BufferedInputStream(uRLConnection.getInputStream(), 8192))).setInclude(false).setByteOrderMarks(BOMS).get();
        BOMInputStream bOMInputStream2 = ((BOMInputStream.Builder) BOMInputStream.builder().setInputStream(new BufferedInputStream(bOMInputStream, 8192))).setInclude(true).setByteOrderMarks(XML_GUESS_BYTES).get();
        if ((uRLConnection instanceof HttpURLConnection) || contentType != null) {
            this.encoding = processHttpStream(bOMInputStream, bOMInputStream2, true, contentType);
        } else {
            this.encoding = processHttpStream(bOMInputStream, bOMInputStream2, true);
        }
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0037  */
    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    private String doLenientDetection(String str, XmlStreamReaderException xmlStreamReaderException) {
        XmlStreamReader xmlStreamReader;
        String xmlEncoding;
        String str2;
        if (str == null || !str.startsWith("text/html")) {
            xmlStreamReader = this;
        } else {
            try {
                xmlStreamReader = this;
                try {
                    return xmlStreamReader.calculateHttpEncoding(xmlStreamReaderException.getBomEncoding(), xmlStreamReaderException.getXmlGuessEncoding(), xmlStreamReaderException.getXmlEncoding(), true, "text/xml".concat(str.substring(9)));
                } catch (XmlStreamReaderException e) {
                    e = e;
                    xmlStreamReaderException = e;
                    xmlEncoding = xmlStreamReaderException.getXmlEncoding();
                    if (xmlEncoding == null) {
                        xmlEncoding = xmlStreamReaderException.getContentTypeEncoding();
                    }
                    if (xmlEncoding == null) {
                        return xmlEncoding;
                    }
                    str2 = xmlStreamReader.defaultEncoding;
                    if (str2 == null) {
                        return UTF_8;
                    }
                    return str2;
                }
            } catch (XmlStreamReaderException e6) {
                e = e6;
                xmlStreamReader = this;
            }
        }
        xmlEncoding = xmlStreamReaderException.getXmlEncoding();
        if (xmlEncoding == null) {
            xmlEncoding = xmlStreamReaderException.getContentTypeEncoding();
        }
        if (xmlEncoding == null) {
            return xmlEncoding;
        }
        str2 = xmlStreamReader.defaultEncoding;
        if (str2 == null) {
            return UTF_8;
        }
        return str2;
    }

    public static String getContentTypeEncoding(String str) {
        int iIndexOf;
        if (str != null && (iIndexOf = str.indexOf(";")) > -1) {
            Matcher matcher = CHARSET_PATTERN.matcher(str.substring(iIndexOf + 1));
            String strGroup = matcher.find() ? matcher.group(1) : null;
            if (strGroup != null) {
                return strGroup.toUpperCase(Locale.ROOT);
            }
        }
        return null;
    }

    public static String getContentTypeMime(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(";");
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        return str.trim();
    }

    private static String getXmlProlog(InputStream inputStream, String str) throws IOException {
        if (str == null) {
            return null;
        }
        byte[] bArrByteArray = IOUtils.byteArray();
        inputStream.mark(8192);
        int i10 = inputStream.read(bArrByteArray, 0, 8192);
        String str2 = "";
        int i11 = 8192;
        int i12 = 0;
        int iIndexOf = -1;
        while (i10 != -1 && iIndexOf == -1 && i12 < 8192) {
            i12 += i10;
            i11 -= i10;
            i10 = inputStream.read(bArrByteArray, i12, i11);
            str2 = new String(bArrByteArray, 0, i12, str);
            iIndexOf = str2.indexOf(62);
        }
        if (iIndexOf == -1) {
            if (i10 == -1) {
                C2467b.m3820A("Unexpected end of XML stream");
                return null;
            }
            C2467b.m3820A(AbstractC0074a.m155f(i12, "XML prolog or ROOT element not found on first ", " bytes"));
            return null;
        }
        if (i12 <= 0) {
            return null;
        }
        inputStream.reset();
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str2.substring(0, iIndexOf + 1)));
        StringBuilder sb = new StringBuilder();
        IOConsumer.forEach(bufferedReader.lines(), new C2880j(2, sb));
        Matcher matcher = ENCODING_PATTERN.matcher(sb);
        if (!matcher.find()) {
            return null;
        }
        String upperCase = matcher.group(1).toUpperCase(Locale.ROOT);
        return upperCase.substring(1, upperCase.length() - 1);
    }

    public static boolean isAppXml(String str) {
        if (str == null) {
            return false;
        }
        if (str.equals("application/xml") || str.equals("application/xml-dtd") || str.equals("application/xml-external-parsed-entity")) {
            return true;
        }
        return str.startsWith("application/") && str.endsWith("+xml");
    }

    public static boolean isTextXml(String str) {
        if (str == null) {
            return false;
        }
        if (str.equals("text/xml") || str.equals("text/xml-external-parsed-entity")) {
            return true;
        }
        return str.startsWith("text/") && str.endsWith("+xml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getXmlProlog$0(StringBuilder sb, String str) {
        sb.append(str);
        sb.append(' ');
    }

    private String processHttpStream(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, boolean z9, String str) throws XmlStreamReaderException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return calculateHttpEncoding(bOMCharsetName, bOMCharsetName2, getXmlProlog(bOMInputStream2, bOMCharsetName2), z9, str);
        } catch (XmlStreamReaderException e) {
            if (z9) {
                return doLenientDetection(str, e);
            }
            throw e;
        }
    }

    public String calculateHttpEncoding(String str, String str2, String str3, boolean z9, String str4) throws XmlStreamReaderException {
        if (z9 && str3 != null) {
            return str3;
        }
        String contentTypeMime = getContentTypeMime(str4);
        String contentTypeEncoding = getContentTypeEncoding(str4);
        boolean zIsAppXml = isAppXml(contentTypeMime);
        boolean zIsTextXml = isTextXml(contentTypeMime);
        if (!zIsAppXml && !zIsTextXml) {
            throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_3, contentTypeMime, contentTypeEncoding, str, str2, str3), contentTypeMime, contentTypeEncoding, str, str2, str3);
        }
        if (contentTypeEncoding == null) {
            if (zIsAppXml) {
                return calculateRawEncoding(str, str2, str3);
            }
            String str5 = this.defaultEncoding;
            return str5 == null ? US_ASCII : str5;
        }
        if (!contentTypeEncoding.equals(UTF_16BE) && !contentTypeEncoding.equals(UTF_16LE)) {
            String str6 = UTF_16;
            if (contentTypeEncoding.equals(str6)) {
                if (str == null || !str.startsWith(str6)) {
                    throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, contentTypeMime, contentTypeEncoding, str, str2, str3), contentTypeMime, contentTypeEncoding, str, str2, str3);
                }
                return str;
            }
            if (contentTypeEncoding.equals(UTF_32BE) || contentTypeEncoding.equals(UTF_32LE)) {
                if (str != null) {
                    throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, contentTypeMime, contentTypeEncoding, str, str2, str3), contentTypeMime, contentTypeEncoding, str, str2, str3);
                }
            } else if (contentTypeEncoding.equals(UTF_32)) {
                if (str == null || !str.startsWith(UTF_32)) {
                    throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, contentTypeMime, contentTypeEncoding, str, str2, str3), contentTypeMime, contentTypeEncoding, str, str2, str3);
                }
                return str;
            }
        } else if (str != null) {
            throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, contentTypeMime, contentTypeEncoding, str, str2, str3), contentTypeMime, contentTypeEncoding, str, str2, str3);
        }
        return contentTypeEncoding;
    }

    public String calculateRawEncoding(String str, String str2, String str3) throws XmlStreamReaderException {
        if (str == null) {
            if (str2 != null && str3 != null) {
                return (str3.equals(UTF_16) && (str2.equals(UTF_16BE) || str2.equals(UTF_16LE))) ? str2 : str3;
            }
            String str4 = this.defaultEncoding;
            return str4 == null ? UTF_8 : str4;
        }
        String str5 = UTF_8;
        if (str.equals(str5)) {
            if (str2 != null && !str2.equals(str5)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
            if (str3 != null && !str3.equals(str5)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
        } else if (str.equals(UTF_16BE) || str.equals(UTF_16LE)) {
            if (str2 != null && !str2.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
            if (str3 != null && !str3.equals(UTF_16) && !str3.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
        } else {
            if (!str.equals(UTF_32BE) && !str.equals(UTF_32LE)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_2, str, str2, str3), str, str2, str3);
            }
            if (str2 != null && !str2.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
            if (str3 != null && !str3.equals(UTF_32) && !str3.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, str, str2, str3), str, str2, str3);
            }
        }
        return str;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }

    public String getDefaultEncoding() {
        return this.defaultEncoding;
    }

    public String getEncoding() {
        return this.encoding;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) {
        return this.reader.read(cArr, i10, i11);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<XmlStreamReader, Builder> {
        private String httpContentType;
        private boolean nullCharset = true;
        private boolean lenient = true;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public XmlStreamReader get() {
            String strName = this.nullCharset ? null : getCharset().name();
            return this.httpContentType == null ? new XmlStreamReader(getInputStream(), this.lenient, strName) : new XmlStreamReader(getInputStream(), this.httpContentType, this.lenient, strName);
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(String str) {
            this.nullCharset = str == null;
            return (Builder) super.setCharset(Charsets.toCharset(str, getCharsetDefault()));
        }

        public Builder setHttpContentType(String str) {
            this.httpContentType = str;
            return this;
        }

        public Builder setLenient(boolean z9) {
            this.lenient = z9;
            return this;
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            this.nullCharset = charset == null;
            return (Builder) super.setCharset(charset);
        }
    }

    private String processHttpStream(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, boolean z9) throws XmlStreamReaderException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return calculateRawEncoding(bOMCharsetName, bOMCharsetName2, getXmlProlog(bOMInputStream2, bOMCharsetName2));
        } catch (XmlStreamReaderException e) {
            if (z9) {
                return doLenientDetection(null, e);
            }
            throw e;
        }
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream) {
        this(inputStream, true);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, boolean z9) {
        this(inputStream, z9, (String) null);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, boolean z9, String str) throws XmlStreamReaderException {
        this.defaultEncoding = str;
        Objects.requireNonNull(inputStream, "inputStream");
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, 8192), false, BOMS);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        String strProcessHttpStream = processHttpStream(bOMInputStream, bOMInputStream2, z9);
        this.encoding = strProcessHttpStream;
        this.reader = new InputStreamReader(bOMInputStream2, strProcessHttpStream);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str) {
        this(inputStream, str, true);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str, boolean z9) {
        this(inputStream, str, z9, null);
    }

    @Deprecated
    public XmlStreamReader(InputStream inputStream, String str, boolean z9, String str2) throws XmlStreamReaderException {
        this.defaultEncoding = str2;
        Objects.requireNonNull(inputStream, "inputStream");
        BOMInputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, 8192), false, BOMS);
        BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        String strProcessHttpStream = processHttpStream(bOMInputStream, bOMInputStream2, z9, str);
        this.encoding = strProcessHttpStream;
        this.reader = new InputStreamReader(bOMInputStream2, strProcessHttpStream);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public XmlStreamReader(Path path) {
        this(Files.newInputStream(AbstractC2109a.m3281m(path), new OpenOption[0]));
        Objects.requireNonNull(path, "file");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public XmlStreamReader(URL url) {
        this(url.openConnection(), (String) null);
        Objects.requireNonNull(url, "url");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public XmlStreamReader(File file) {
        this(file.toPath());
        Objects.requireNonNull(file, "file");
    }
}
