package org.apache.commons.io.input;

import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class XmlStreamReader$Builder extends AbstractStreamBuilder<XmlStreamReader, XmlStreamReader$Builder> {
    private String httpContentType;
    private boolean nullCharset = true;
    private boolean lenient = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public XmlStreamReader get() {
        String strName = this.nullCharset ? null : getCharset().name();
        return this.httpContentType == null ? new XmlStreamReader(getInputStream(), this.lenient, strName) : new XmlStreamReader(getInputStream(), this.httpContentType, this.lenient, strName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public XmlStreamReader$Builder setCharset(String str) {
        this.nullCharset = str == null;
        return (XmlStreamReader$Builder) super.setCharset(Charsets.toCharset(str, getCharsetDefault()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public XmlStreamReader$Builder setHttpContentType(String str) {
        this.httpContentType = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public XmlStreamReader$Builder setLenient(boolean z) {
        this.lenient = z;
        return this;
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setCharset(Charset charset) {
        return setCharset(charset);
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public XmlStreamReader$Builder setCharset(Charset charset) {
        this.nullCharset = charset == null;
        return (XmlStreamReader$Builder) super.setCharset(charset);
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setCharset(String str) {
        return setCharset(str);
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }
}
