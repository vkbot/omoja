package org.apache.commons.io.input;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class XmlStreamReaderException extends IOException {
    private static final long serialVersionUID = 1;
    private final String bomEncoding;
    private final String contentTypeEncoding;
    private final String contentTypeMime;
    private final String xmlEncoding;
    private final String xmlGuessEncoding;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public XmlStreamReaderException(String str, String str2, String str3, String str4, String str5, String str6) {
        super(str);
        this.contentTypeMime = str2;
        this.contentTypeEncoding = str3;
        this.bomEncoding = str4;
        this.xmlGuessEncoding = str5;
        this.xmlEncoding = str6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getBomEncoding() {
        return this.bomEncoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getContentTypeEncoding() {
        return this.contentTypeEncoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getContentTypeMime() {
        return this.contentTypeMime;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getXmlEncoding() {
        return this.xmlEncoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getXmlGuessEncoding() {
        return this.xmlGuessEncoding;
    }

    public XmlStreamReaderException(String str, String str2, String str3, String str4) {
        this(str, null, null, str2, str3, str4);
    }
}
