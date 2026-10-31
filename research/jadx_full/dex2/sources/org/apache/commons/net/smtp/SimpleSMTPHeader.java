package org.apache.commons.net.smtp;

import j1.i;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class SimpleSMTPHeader {
    private StringBuffer cc;
    private final String from;
    private boolean hasHeaderDate;
    private final StringBuffer headerFields;
    private final String subject;
    private final String to;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SimpleSMTPHeader(String str, String str2, String str3) {
        if (str == null) {
            i.k("From cannot be null");
            throw null;
        }
        this.to = str2;
        this.from = str;
        this.subject = str3;
        this.headerFields = new StringBuffer();
        this.cc = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCC(String str) {
        StringBuffer stringBuffer = this.cc;
        if (stringBuffer == null) {
            this.cc = new StringBuffer();
        } else {
            stringBuffer.append(", ");
        }
        this.cc.append(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addHeaderField(String str, String str2) {
        if (!this.hasHeaderDate && "Date".equals(str)) {
            this.hasHeaderDate = true;
        }
        this.headerFields.append(str);
        this.headerFields.append(": ");
        this.headerFields.append(str2);
        this.headerFields.append('\n');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.ENGLISH);
        if (!this.hasHeaderDate) {
            addHeaderField("Date", simpleDateFormat.format(new Date()));
        }
        if (this.headerFields.length() > 0) {
            sb.append(this.headerFields.toString());
        }
        sb.append("From: ");
        sb.append(this.from);
        sb.append("\n");
        if (this.to != null) {
            sb.append("To: ");
            sb.append(this.to);
            sb.append("\n");
        }
        if (this.cc != null) {
            sb.append("Cc: ");
            sb.append(this.cc.toString());
            sb.append("\n");
        }
        if (this.subject != null) {
            sb.append("Subject: ");
            sb.append(this.subject);
            sb.append("\n");
        }
        sb.append('\n');
        return sb.toString();
    }
}
