package org.apache.commons.net.smtp;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SimpleSMTPHeader {

    /* JADX INFO: renamed from: cc */
    private StringBuffer f8145cc;
    private final String from;
    private boolean hasHeaderDate;
    private final StringBuffer headerFields;
    private final String subject;

    /* JADX INFO: renamed from: to */
    private final String f8146to;

    public SimpleSMTPHeader(String str, String str2, String str3) {
        if (str == null) {
            C1929i.m3029k("From cannot be null");
            throw null;
        }
        this.f8146to = str2;
        this.from = str;
        this.subject = str3;
        this.headerFields = new StringBuffer();
        this.f8145cc = null;
    }

    public void addCC(String str) {
        StringBuffer stringBuffer = this.f8145cc;
        if (stringBuffer == null) {
            this.f8145cc = new StringBuffer();
        } else {
            stringBuffer.append(", ");
        }
        this.f8145cc.append(str);
    }

    public void addHeaderField(String str, String str2) {
        if (!this.hasHeaderDate && "Date".equals(str)) {
            this.hasHeaderDate = true;
        }
        this.headerFields.append(str);
        this.headerFields.append(": ");
        this.headerFields.append(str2);
        this.headerFields.append('\n');
    }

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
        if (this.f8146to != null) {
            sb.append("To: ");
            sb.append(this.f8146to);
            sb.append("\n");
        }
        if (this.f8145cc != null) {
            sb.append("Cc: ");
            sb.append(this.f8145cc.toString());
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
